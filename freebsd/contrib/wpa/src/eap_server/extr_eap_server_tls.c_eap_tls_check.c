
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_tls_data {scalar_t__ eap_type; } ;
struct eap_sm {int dummy; } ;
typedef int Boolean ;


 scalar_t__ EAP_UNAUTH_TLS_TYPE ;
 int EAP_VENDOR_IETF ;
 scalar_t__ EAP_VENDOR_TYPE_UNAUTH_TLS ;
 int EAP_VENDOR_UNAUTH_TLS ;
 int EAP_VENDOR_WFA_NEW ;
 scalar_t__ EAP_VENDOR_WFA_UNAUTH_TLS ;
 scalar_t__ EAP_WFA_UNAUTH_TLS_TYPE ;
 int FALSE ;
 int MSG_INFO ;
 int TRUE ;
 int * eap_hdr_validate (int ,scalar_t__,struct wpabuf*,size_t*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static Boolean eap_tls_check(struct eap_sm *sm, void *priv,
        struct wpabuf *respData)
{
 struct eap_tls_data *data = priv;
 const u8 *pos;
 size_t len;

 if (data->eap_type == EAP_UNAUTH_TLS_TYPE)
  pos = eap_hdr_validate(EAP_VENDOR_UNAUTH_TLS,
           EAP_VENDOR_TYPE_UNAUTH_TLS, respData,
           &len);
 else if (data->eap_type == EAP_WFA_UNAUTH_TLS_TYPE)
  pos = eap_hdr_validate(EAP_VENDOR_WFA_NEW,
           EAP_VENDOR_WFA_UNAUTH_TLS, respData,
           &len);
 else
  pos = eap_hdr_validate(EAP_VENDOR_IETF, data->eap_type,
           respData, &len);
 if (pos == ((void*)0) || len < 1) {
  wpa_printf(MSG_INFO, "EAP-TLS: Invalid frame");
  return TRUE;
 }

 return FALSE;
}
