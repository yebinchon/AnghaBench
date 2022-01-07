
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
 int SSL3_AD_UNEXPECTED_MESSAGE ;
 int SSL3_AD_UNSUPPORTED_CERTIFICATE ;
 int TLS1_AD_ACCESS_DENIED ;
 int TLS1_AD_BAD_CERTIFICATE_HASH_VALUE ;
 int TLS1_AD_BAD_CERTIFICATE_STATUS_RESPONSE ;
 int TLS1_AD_CERTIFICATE_UNOBTAINABLE ;
 int TLS1_AD_DECODE_ERROR ;
 int TLS1_AD_DECRYPTION_FAILED ;
 int TLS1_AD_DECRYPT_ERROR ;
 int TLS1_AD_EXPORT_RESTRICTION ;
 int TLS1_AD_INAPPROPRIATE_FALLBACK ;
 int TLS1_AD_INSUFFICIENT_SECURITY ;
 int TLS1_AD_INTERNAL_ERROR ;
 int TLS1_AD_NO_APPLICATION_PROTOCOL ;
 int TLS1_AD_NO_RENEGOTIATION ;
 int TLS1_AD_PROTOCOL_VERSION ;
 int TLS1_AD_RECORD_OVERFLOW ;
 int TLS1_AD_UNKNOWN_CA ;
 int TLS1_AD_UNKNOWN_PSK_IDENTITY ;
 int TLS1_AD_UNRECOGNIZED_NAME ;
 int TLS1_AD_UNSUPPORTED_EXTENSION ;
 int TLS1_AD_USER_CANCELLED ;

int tls1_alert_code(int code)
{
    switch (code) {
    case 150:
        return SSL3_AD_CLOSE_NOTIFY;
    case 134:
        return SSL3_AD_UNEXPECTED_MESSAGE;
    case 156:
        return SSL3_AD_BAD_RECORD_MAC;
    case 147:
        return TLS1_AD_DECRYPTION_FAILED;
    case 135:
        return TLS1_AD_RECORD_OVERFLOW;
    case 148:
        return SSL3_AD_DECOMPRESSION_FAILURE;
    case 144:
        return SSL3_AD_HANDSHAKE_FAILURE;
    case 138:
        return -1;
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
        return TLS1_AD_UNKNOWN_CA;
    case 160:
        return TLS1_AD_ACCESS_DENIED;
    case 149:
        return TLS1_AD_DECODE_ERROR;
    case 146:
        return TLS1_AD_DECRYPT_ERROR;
    case 145:
        return TLS1_AD_EXPORT_RESTRICTION;
    case 136:
        return TLS1_AD_PROTOCOL_VERSION;
    case 141:
        return TLS1_AD_INSUFFICIENT_SECURITY;
    case 140:
        return TLS1_AD_INTERNAL_ERROR;
    case 128:
        return TLS1_AD_USER_CANCELLED;
    case 137:
        return TLS1_AD_NO_RENEGOTIATION;
    case 129:
        return TLS1_AD_UNSUPPORTED_EXTENSION;
    case 151:
        return TLS1_AD_CERTIFICATE_UNOBTAINABLE;
    case 131:
        return TLS1_AD_UNRECOGNIZED_NAME;
    case 157:
        return TLS1_AD_BAD_CERTIFICATE_STATUS_RESPONSE;
    case 158:
        return TLS1_AD_BAD_CERTIFICATE_HASH_VALUE;
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
