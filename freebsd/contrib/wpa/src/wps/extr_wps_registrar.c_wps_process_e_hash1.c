
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int peer_hash1; } ;


 int MSG_DEBUG ;
 int WPS_HASH_LEN ;
 int os_memcpy (int ,int const*,int ) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_process_e_hash1(struct wps_data *wps, const u8 *e_hash1)
{
 if (e_hash1 == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No E-Hash1 received");
  return -1;
 }

 os_memcpy(wps->peer_hash1, e_hash1, WPS_HASH_LEN);
 wpa_hexdump(MSG_DEBUG, "WPS: E-Hash1", wps->peer_hash1, WPS_HASH_LEN);

 return 0;
}
