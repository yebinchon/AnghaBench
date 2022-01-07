
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int * wps_er; int ifname; int wps; } ;


 int * wps_er_init (int ,int ,char const*) ;
 int wps_er_refresh (int *) ;

int wpas_wps_er_start(struct wpa_supplicant *wpa_s, const char *filter)
{
 return 0;

}
