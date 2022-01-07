
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
typedef scalar_t__ EapType ;


 scalar_t__ EAP_UNAUTH_TLS_TYPE ;
 int EAP_VENDOR_IETF ;
 scalar_t__ EAP_VENDOR_TYPE_UNAUTH_TLS ;
 int EAP_VENDOR_UNAUTH_TLS ;
 int EAP_VENDOR_WFA_NEW ;
 scalar_t__ EAP_VENDOR_WFA_UNAUTH_TLS ;
 scalar_t__ EAP_WFA_UNAUTH_TLS_TYPE ;
 struct wpabuf* eap_msg_alloc (int ,scalar_t__,size_t,int ,int ) ;

struct wpabuf * eap_tls_msg_alloc(EapType type, size_t payload_len,
      u8 code, u8 identifier)
{
 if (type == EAP_UNAUTH_TLS_TYPE)
  return eap_msg_alloc(EAP_VENDOR_UNAUTH_TLS,
         EAP_VENDOR_TYPE_UNAUTH_TLS, payload_len,
         code, identifier);
 else if (type == EAP_WFA_UNAUTH_TLS_TYPE)
  return eap_msg_alloc(EAP_VENDOR_WFA_NEW,
         EAP_VENDOR_WFA_UNAUTH_TLS, payload_len,
         code, identifier);
 return eap_msg_alloc(EAP_VENDOR_IETF, type, payload_len, code,
        identifier);
}
