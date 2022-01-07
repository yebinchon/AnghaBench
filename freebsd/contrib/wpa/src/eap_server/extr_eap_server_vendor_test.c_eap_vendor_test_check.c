
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
typedef int Boolean ;


 int EAP_VENDOR_ID ;
 int EAP_VENDOR_TYPE ;
 int FALSE ;
 int MSG_INFO ;
 int TRUE ;
 int * eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static Boolean eap_vendor_test_check(struct eap_sm *sm, void *priv,
         struct wpabuf *respData)
{
 const u8 *pos;
 size_t len;

 pos = eap_hdr_validate(EAP_VENDOR_ID, EAP_VENDOR_TYPE, respData, &len);
 if (pos == ((void*)0) || len < 1) {
  wpa_printf(MSG_INFO, "EAP-VENDOR-TEST: Invalid frame");
  return TRUE;
 }

 return FALSE;
}
