
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int WPA_IF_P2P_CLIENT ;
 int WPA_IF_P2P_GO ;
 int wpa_drv_get_pref_freq_list (struct wpa_supplicant*,int ,unsigned int*,unsigned int*) ;

__attribute__((used)) static int wpas_p2p_get_pref_freq_list(void *ctx, int go,
           unsigned int *len,
           unsigned int *freq_list)
{
 struct wpa_supplicant *wpa_s = ctx;

 return wpa_drv_get_pref_freq_list(wpa_s, go ? WPA_IF_P2P_GO :
       WPA_IF_P2P_CLIENT, len, freq_list);
}
