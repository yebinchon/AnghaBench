
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int nonce_e; } ;


 int MSG_DEBUG ;
 int WPS_NONCE_LEN ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_process_enrollee_nonce(struct wps_data *wps, const u8 *e_nonce)
{
 if (e_nonce == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Enrollee Nonce received");
  return -1;
 }

 if (os_memcmp(wps->nonce_e, e_nonce, WPS_NONCE_LEN) != 0) {
  wpa_printf(MSG_DEBUG, "WPS: Invalid Enrollee Nonce received");
  return -1;
 }

 return 0;
}
