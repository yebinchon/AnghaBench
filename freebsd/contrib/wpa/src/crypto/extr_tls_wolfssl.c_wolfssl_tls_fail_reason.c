
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tls_fail_reason { ____Placeholder_tls_fail_reason } tls_fail_reason ;




 int TLS_FAIL_BAD_CERTIFICATE ;
 int TLS_FAIL_EXPIRED ;
 int TLS_FAIL_NOT_YET_VALID ;
 int TLS_FAIL_REVOKED ;
 int TLS_FAIL_UNSPECIFIED ;
 int TLS_FAIL_UNTRUSTED ;
__attribute__((used)) static enum tls_fail_reason wolfssl_tls_fail_reason(int err)
{
 switch (err) {
 case 147:
  return TLS_FAIL_REVOKED;
 case 152:
 case 149:
 case 144:
  return TLS_FAIL_NOT_YET_VALID;
 case 153:
 case 150:
 case 145:
  return TLS_FAIL_EXPIRED;
 case 130:
 case 132:
 case 131:
 case 136:
 case 129:
 case 143:
 case 128:
 case 151:
 case 137:
 case 138:
  return TLS_FAIL_UNTRUSTED;
 case 134:
 case 133:
 case 135:
 case 141:
 case 142:
 case 140:
 case 139:
 case 146:
 case 148:
  return TLS_FAIL_BAD_CERTIFICATE;
 default:
  return TLS_FAIL_UNSPECIFIED;
 }
}
