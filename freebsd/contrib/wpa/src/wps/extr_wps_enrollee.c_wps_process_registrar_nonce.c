
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int nonce_r; } ;


 int MSG_DEBUG ;
 int WPS_NONCE_LEN ;
 int os_memcpy (int ,int const*,int ) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_process_registrar_nonce(struct wps_data *wps, const u8 *r_nonce)
{
 if (r_nonce == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Registrar Nonce received");
  return -1;
 }

 os_memcpy(wps->nonce_r, r_nonce, WPS_NONCE_LEN);
 wpa_hexdump(MSG_DEBUG, "WPS: Registrar Nonce",
      wps->nonce_r, WPS_NONCE_LEN);

 return 0;
}
