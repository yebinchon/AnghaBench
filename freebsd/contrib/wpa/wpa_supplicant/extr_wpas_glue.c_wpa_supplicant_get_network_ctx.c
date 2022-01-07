
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* wpa_supplicant_get_ssid (void*) ;

__attribute__((used)) static void * wpa_supplicant_get_network_ctx(void *wpa_s)
{
 return wpa_supplicant_get_ssid(wpa_s);
}
