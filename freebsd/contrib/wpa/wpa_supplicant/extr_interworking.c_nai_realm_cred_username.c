
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct nai_realm_eap {scalar_t__ method; scalar_t__ inner_method; scalar_t__ inner_non_eap; } ;


 scalar_t__ EAP_TYPE_FAST ;
 scalar_t__ EAP_TYPE_GTC ;
 scalar_t__ EAP_TYPE_MSCHAPV2 ;
 scalar_t__ EAP_TYPE_PEAP ;
 scalar_t__ EAP_TYPE_TTLS ;
 int EAP_VENDOR_IETF ;
 int MSG_DEBUG ;
 scalar_t__ NAI_REALM_INNER_NON_EAP_CHAP ;
 scalar_t__ NAI_REALM_INNER_NON_EAP_MSCHAP ;
 scalar_t__ NAI_REALM_INNER_NON_EAP_MSCHAPV2 ;
 scalar_t__ NAI_REALM_INNER_NON_EAP_PAP ;
 int * eap_get_name (int ,scalar_t__) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*,...) ;

__attribute__((used)) static int nai_realm_cred_username(struct wpa_supplicant *wpa_s,
       struct nai_realm_eap *eap)
{
 if (eap_get_name(EAP_VENDOR_IETF, eap->method) == ((void*)0)) {
  wpa_msg(wpa_s, MSG_DEBUG,
   "nai-realm-cred-username: EAP method not supported: %d",
   eap->method);
  return 0;
 }

 if (eap->method != EAP_TYPE_TTLS && eap->method != EAP_TYPE_PEAP &&
     eap->method != EAP_TYPE_FAST) {

  wpa_msg(wpa_s, MSG_DEBUG,
   "nai-realm-cred-username: Method: %d is not TTLS, PEAP, or FAST",
   eap->method);
  return 0;
 }

 if (eap->method == EAP_TYPE_PEAP || eap->method == EAP_TYPE_FAST) {
  if (eap->inner_method &&
      eap_get_name(EAP_VENDOR_IETF, eap->inner_method) == ((void*)0)) {
   wpa_msg(wpa_s, MSG_DEBUG,
    "nai-realm-cred-username: PEAP/FAST: Inner method not supported: %d",
    eap->inner_method);
   return 0;
  }
  if (!eap->inner_method &&
      eap_get_name(EAP_VENDOR_IETF, EAP_TYPE_MSCHAPV2) == ((void*)0)) {
   wpa_msg(wpa_s, MSG_DEBUG,
    "nai-realm-cred-username: MSCHAPv2 not supported");
   return 0;
  }
 }

 if (eap->method == EAP_TYPE_TTLS) {
  if (eap->inner_method == 0 && eap->inner_non_eap == 0)
   return 1;
  if (eap->inner_method &&
      eap_get_name(EAP_VENDOR_IETF, eap->inner_method) == ((void*)0)) {
   wpa_msg(wpa_s, MSG_DEBUG,
    "nai-realm-cred-username: TTLS, but inner not supported: %d",
    eap->inner_method);
   return 0;
  }
  if (eap->inner_non_eap &&
      eap->inner_non_eap != NAI_REALM_INNER_NON_EAP_PAP &&
      eap->inner_non_eap != NAI_REALM_INNER_NON_EAP_CHAP &&
      eap->inner_non_eap != NAI_REALM_INNER_NON_EAP_MSCHAP &&
      eap->inner_non_eap != NAI_REALM_INNER_NON_EAP_MSCHAPV2) {
   wpa_msg(wpa_s, MSG_DEBUG,
    "nai-realm-cred-username: TTLS, inner-non-eap not supported: %d",
    eap->inner_non_eap);
   return 0;
  }
 }

 if (eap->inner_method &&
     eap->inner_method != EAP_TYPE_GTC &&
     eap->inner_method != EAP_TYPE_MSCHAPV2) {
  wpa_msg(wpa_s, MSG_DEBUG,
   "nai-realm-cred-username: inner-method not GTC or MSCHAPv2: %d",
   eap->inner_method);
  return 0;
 }

 return 1;
}
