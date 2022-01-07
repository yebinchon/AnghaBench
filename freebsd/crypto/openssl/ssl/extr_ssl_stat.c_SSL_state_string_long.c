
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;




 int SSL_get_state (int const*) ;
 scalar_t__ ossl_statem_in_error (int const*) ;

const char *SSL_state_string_long(const SSL *s)
{
    if (ossl_statem_in_error(s))
        return "error";

    switch (SSL_get_state(s)) {
    case 172:
        return "SSLv3/TLS read certificate status";
    case 153:
        return "SSLv3/TLS write next proto";
    case 141:
        return "SSLv3/TLS read next proto";
    case 138:
        return "SSLv3/TLS write certificate status";
    case 175:
        return "before SSL initialization";
    case 151:
        return "SSL negotiation finished successfully";
    case 158:
        return "SSLv3/TLS write client hello";
    case 162:
        return "SSLv3/TLS read server hello";
    case 174:
        return "SSLv3/TLS read server certificate";
    case 166:
        return "SSLv3/TLS read server key exchange";
    case 173:
        return "SSLv3/TLS read server certificate request";
    case 164:
        return "SSLv3/TLS read server session ticket";
    case 163:
        return "SSLv3/TLS read server done";
    case 161:
        return "SSLv3/TLS write client certificate";
    case 155:
        return "SSLv3/TLS write client key exchange";
    case 160:
        return "SSLv3/TLS write certificate verify";
    case 159:
    case 136:
        return "SSLv3/TLS write change cipher spec";
    case 156:
    case 134:
        return "SSLv3/TLS write finished";
    case 170:
    case 147:
        return "SSLv3/TLS read change cipher spec";
    case 168:
    case 144:
        return "SSLv3/TLS read finished";
    case 146:
        return "SSLv3/TLS read client hello";
    case 133:
        return "SSLv3/TLS write hello request";
    case 128:
        return "SSLv3/TLS write server hello";
    case 140:
        return "SSLv3/TLS write certificate";
    case 132:
        return "SSLv3/TLS write key exchange";
    case 139:
        return "SSLv3/TLS write certificate request";
    case 130:
        return "SSLv3/TLS write session ticket";
    case 129:
        return "SSLv3/TLS write server done";
    case 149:
        return "SSLv3/TLS read client certificate";
    case 143:
        return "SSLv3/TLS read client key exchange";
    case 148:
        return "SSLv3/TLS read certificate verify";
    case 177:
        return "DTLS1 read hello verify request";
    case 176:
        return "DTLS1 write hello verify request";
    case 135:
        return "TLSv1.3 write encrypted extensions";
    case 169:
        return "TLSv1.3 read encrypted extensions";
    case 171:
        return "TLSv1.3 read server certificate verify";
    case 137:
        return "TLSv1.3 write server certificate verify";
    case 167:
        return "SSLv3/TLS read hello request";
    case 131:
        return "TLSv1.3 write server key update";
    case 154:
        return "TLSv1.3 write client key update";
    case 142:
        return "TLSv1.3 read client key update";
    case 165:
        return "TLSv1.3 read server key update";
    case 152:
        return "TLSv1.3 early data";
    case 150:
        return "TLSv1.3 pending early data end";
    case 157:
        return "TLSv1.3 write end of early data";
    case 145:
        return "TLSv1.3 read end of early data";
    default:
        return "unknown state";
    }
}
