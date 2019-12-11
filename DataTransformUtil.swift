public extension UUID {
    public var representation: String {
        return String(decoding: Data(bytes: Mirror(reflecting: self.uuid as Any).children.map({$0.1}), count: 16), as: UTF8.self)
    }
}
