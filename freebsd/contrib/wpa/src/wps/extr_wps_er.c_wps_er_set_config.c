
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wps_er_ap {TYPE_1__* ap_settings; } ;
struct wps_er {int dummy; } ;
struct wps_credential {int dummy; } ;
struct TYPE_3__ {int * cred_attr; } ;


 int MSG_DEBUG ;
 int os_free (TYPE_1__*) ;
 TYPE_1__* os_memdup (struct wps_credential const*,int) ;
 int wpa_printf (int ,char*) ;
 struct wps_er_ap* wps_er_ap_get (struct wps_er*,int *,int const*,int const*) ;

int wps_er_set_config(struct wps_er *er, const u8 *uuid, const u8 *addr,
        const struct wps_credential *cred)
{
 struct wps_er_ap *ap;

 if (er == ((void*)0))
  return -1;

 ap = wps_er_ap_get(er, ((void*)0), uuid, addr);
 if (ap == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS ER: AP not found for set config "
      "request");
  return -1;
 }

 os_free(ap->ap_settings);
 ap->ap_settings = os_memdup(cred, sizeof(*cred));
 if (ap->ap_settings == ((void*)0))
  return -1;
 ap->ap_settings->cred_attr = ((void*)0);
 wpa_printf(MSG_DEBUG, "WPS ER: Updated local AP settings based set "
     "config request");

 return 0;
}
