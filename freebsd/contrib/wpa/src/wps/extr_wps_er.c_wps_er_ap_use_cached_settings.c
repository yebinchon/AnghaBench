
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er_ap_settings {int ap_settings; } ;
struct wps_er_ap {int * ap_settings; int uuid; int er; } ;
struct wps_er {int dummy; } ;


 int MSG_DEBUG ;
 int * os_memdup (int *,int) ;
 int wpa_printf (int ,char*) ;
 struct wps_er_ap_settings* wps_er_ap_get_settings (int ,int ) ;

__attribute__((used)) static int wps_er_ap_use_cached_settings(struct wps_er *er,
      struct wps_er_ap *ap)
{
 struct wps_er_ap_settings *s;

 if (ap->ap_settings)
  return 0;

 s = wps_er_ap_get_settings(ap->er, ap->uuid);
 if (!s)
  return -1;

 ap->ap_settings = os_memdup(&s->ap_settings, sizeof(*ap->ap_settings));
 if (ap->ap_settings == ((void*)0))
  return -1;

 wpa_printf(MSG_DEBUG, "WPS ER: Use cached AP settings");
 return 0;
}
