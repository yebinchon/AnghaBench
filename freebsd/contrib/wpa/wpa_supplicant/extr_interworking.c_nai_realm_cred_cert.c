
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct nai_realm_eap {scalar_t__ method; } ;


 scalar_t__ EAP_TYPE_TLS ;
 int EAP_VENDOR_IETF ;
 int MSG_DEBUG ;
 int * eap_get_name (int ,scalar_t__) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*,scalar_t__) ;

__attribute__((used)) static int nai_realm_cred_cert(struct wpa_supplicant *wpa_s,
          struct nai_realm_eap *eap)
{
 if (eap_get_name(EAP_VENDOR_IETF, eap->method) == ((void*)0)) {
  wpa_msg(wpa_s, MSG_DEBUG,
   "nai-realm-cred-cert: Method not supported: %d",
   eap->method);
  return 0;
 }

 if (eap->method != EAP_TYPE_TLS) {

  wpa_msg(wpa_s, MSG_DEBUG,
   "nai-realm-cred-cert: Method not TLS: %d",
   eap->method);
  return 0;
 }

 return 1;
}
