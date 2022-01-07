
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSL3_AD_BAD_CERTIFICATE ;
 int SSL3_AD_BAD_RECORD_MAC ;
 int SSL3_AD_CERTIFICATE_EXPIRED ;
 int SSL3_AD_CERTIFICATE_REVOKED ;
 int SSL3_AD_CERTIFICATE_UNKNOWN ;
 int SSL3_AD_CLOSE_NOTIFY ;
 int SSL3_AD_DECOMPRESSION_FAILURE ;
 int SSL3_AD_HANDSHAKE_FAILURE ;
 int SSL3_AD_ILLEGAL_PARAMETER ;
 int SSL3_AD_NO_CERTIFICATE ;
 int SSL3_AD_UNEXPECTED_MESSAGE ;
 int SSL3_AD_UNSUPPORTED_CERTIFICATE ;
 int TLS1_AD_INAPPROPRIATE_FALLBACK ;
 int TLS1_AD_NO_APPLICATION_PROTOCOL ;
 int TLS1_AD_UNKNOWN_PSK_IDENTITY ;

int ssl3_alert_code(int code)
{
    switch (code) {
    case 150:
        return SSL3_AD_CLOSE_NOTIFY;
    case 134:
        return SSL3_AD_UNEXPECTED_MESSAGE;
    case 156:
        return SSL3_AD_BAD_RECORD_MAC;
    case 147:
        return SSL3_AD_BAD_RECORD_MAC;
    case 135:
        return SSL3_AD_BAD_RECORD_MAC;
    case 148:
        return SSL3_AD_DECOMPRESSION_FAILURE;
    case 144:
        return SSL3_AD_HANDSHAKE_FAILURE;
    case 138:
        return SSL3_AD_NO_CERTIFICATE;
    case 159:
        return SSL3_AD_BAD_CERTIFICATE;
    case 130:
        return SSL3_AD_UNSUPPORTED_CERTIFICATE;
    case 153:
        return SSL3_AD_CERTIFICATE_REVOKED;
    case 155:
        return SSL3_AD_CERTIFICATE_EXPIRED;
    case 152:
        return SSL3_AD_CERTIFICATE_UNKNOWN;
    case 143:
        return SSL3_AD_ILLEGAL_PARAMETER;
    case 133:
        return SSL3_AD_BAD_CERTIFICATE;
    case 160:
        return SSL3_AD_HANDSHAKE_FAILURE;
    case 149:
        return SSL3_AD_HANDSHAKE_FAILURE;
    case 146:
        return SSL3_AD_HANDSHAKE_FAILURE;
    case 145:
        return SSL3_AD_HANDSHAKE_FAILURE;
    case 136:
        return SSL3_AD_HANDSHAKE_FAILURE;
    case 141:
        return SSL3_AD_HANDSHAKE_FAILURE;
    case 140:
        return SSL3_AD_HANDSHAKE_FAILURE;
    case 128:
        return SSL3_AD_HANDSHAKE_FAILURE;
    case 137:
        return -1;
    case 129:
        return SSL3_AD_HANDSHAKE_FAILURE;
    case 151:
        return SSL3_AD_HANDSHAKE_FAILURE;
    case 131:
        return SSL3_AD_HANDSHAKE_FAILURE;
    case 157:
        return SSL3_AD_HANDSHAKE_FAILURE;
    case 158:
        return SSL3_AD_HANDSHAKE_FAILURE;
    case 132:
        return TLS1_AD_UNKNOWN_PSK_IDENTITY;
    case 142:
        return TLS1_AD_INAPPROPRIATE_FALLBACK;
    case 139:
        return TLS1_AD_NO_APPLICATION_PROTOCOL;
    case 154:
        return 144;
    default:
        return -1;
    }
}
