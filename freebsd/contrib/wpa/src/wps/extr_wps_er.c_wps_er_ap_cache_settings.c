
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er_ap_settings {int ap_settings; int list; int * uuid; } ;
struct wps_er_ap {int * ap_settings; int * uuid; } ;
struct wps_er {int ap_settings; } ;
struct wps_credential {int dummy; } ;
struct in_addr {int dummy; } ;


 int WPS_UUID_LEN ;
 int dl_list_add (int *,int *) ;
 int os_memcpy (int *,int *,int) ;
 struct wps_er_ap_settings* os_zalloc (int) ;
 struct wps_er_ap* wps_er_ap_get (struct wps_er*,struct in_addr*,int *,int *) ;
 struct wps_er_ap_settings* wps_er_ap_get_settings (struct wps_er*,int *) ;

int wps_er_ap_cache_settings(struct wps_er *er, struct in_addr *addr)
{
 struct wps_er_ap *ap;
 struct wps_er_ap_settings *settings;

 ap = wps_er_ap_get(er, addr, ((void*)0), ((void*)0));
 if (ap == ((void*)0) || ap->ap_settings == ((void*)0))
  return -1;

 settings = wps_er_ap_get_settings(er, ap->uuid);
 if (!settings) {
  settings = os_zalloc(sizeof(*settings));
  if (settings == ((void*)0))
   return -1;
  os_memcpy(settings->uuid, ap->uuid, WPS_UUID_LEN);
  dl_list_add(&er->ap_settings, &settings->list);
 }
 os_memcpy(&settings->ap_settings, ap->ap_settings,
    sizeof(struct wps_credential));

 return 0;
}
