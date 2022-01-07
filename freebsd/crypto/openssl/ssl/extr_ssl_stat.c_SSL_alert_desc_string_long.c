
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *SSL_alert_desc_string_long(int value)
{
    switch (value & 0xff) {
    case 153:
        return "close notify";
    case 148:
        return "unexpected_message";
    case 157:
        return "bad record mac";
    case 152:
        return "decompression failure";
    case 151:
        return "handshake failure";
    case 149:
        return "no certificate";
    case 158:
        return "bad certificate";
    case 147:
        return "unsupported certificate";
    case 155:
        return "certificate revoked";
    case 156:
        return "certificate expired";
    case 154:
        return "certificate unknown";
    case 150:
        return "illegal parameter";
    case 141:
        return "decryption failed";
    case 133:
        return "record overflow";
    case 132:
        return "unknown CA";
    case 146:
        return "access denied";
    case 142:
        return "decode error";
    case 140:
        return "decrypt error";
    case 139:
        return "export restriction";
    case 134:
        return "protocol version";
    case 138:
        return "insufficient security";
    case 137:
        return "internal error";
    case 128:
        return "user canceled";
    case 135:
        return "no renegotiation";
    case 129:
        return "unsupported extension";
    case 143:
        return "certificate unobtainable";
    case 130:
        return "unrecognized name";
    case 144:
        return "bad certificate status response";
    case 145:
        return "bad certificate hash value";
    case 131:
        return "unknown PSK identity";
    case 136:
        return "no application protocol";
    default:
        return "unknown";
    }
}
