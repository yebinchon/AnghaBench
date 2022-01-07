
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_credential {int key_idx; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int const) ;

__attribute__((used)) static int wps_process_cred_network_key_idx(struct wps_credential *cred,
         const u8 *key_idx)
{
 if (key_idx == ((void*)0))
  return 0;

 wpa_printf(MSG_DEBUG, "WPS: Network Key Index: %d", *key_idx);
 cred->key_idx = *key_idx;

 return 0;
}
