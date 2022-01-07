
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int s_addr; } ;
struct wps_er_ap {int * location; int http; TYPE_1__ addr; int uuid; int list; scalar_t__ id; struct wps_er* er; int sta; } ;
struct wps_er {int ap; scalar_t__ next_ap_id; } ;
struct in_addr {int s_addr; } ;


 int MSG_DEBUG ;
 int WPS_UUID_LEN ;
 int dl_list_add (int *,int *) ;
 int dl_list_init (int *) ;
 int eloop_cancel_timeout (int ,struct wps_er*,struct wps_er_ap*) ;
 int eloop_register_timeout (int,int ,int ,struct wps_er*,struct wps_er_ap*) ;
 int http_client_url (int *,int *,int,int ,struct wps_er_ap*) ;
 int inet_ntoa (TYPE_1__) ;
 int os_free (struct wps_er_ap*) ;
 int os_memcpy (int ,int const*,int ) ;
 int * os_strdup (char const*) ;
 struct wps_er_ap* os_zalloc (int) ;
 int wpa_printf (int ,char*,int ,int *) ;
 struct wps_er_ap* wps_er_ap_get (struct wps_er*,struct in_addr*,int const*,int *) ;
 int wps_er_ap_timeout ;
 int wps_er_http_dev_desc_cb ;

void wps_er_ap_add(struct wps_er *er, const u8 *uuid, struct in_addr *addr,
     const char *location, int max_age)
{
 struct wps_er_ap *ap;

 ap = wps_er_ap_get(er, addr, uuid, ((void*)0));
 if (ap) {

  eloop_cancel_timeout(wps_er_ap_timeout, er, ap);
  eloop_register_timeout(max_age, 0, wps_er_ap_timeout, er, ap);
  return;
 }

 ap = os_zalloc(sizeof(*ap));
 if (ap == ((void*)0))
  return;
 dl_list_init(&ap->sta);
 ap->er = er;
 ap->id = ++er->next_ap_id;
 ap->location = os_strdup(location);
 if (ap->location == ((void*)0)) {
  os_free(ap);
  return;
 }
 dl_list_add(&er->ap, &ap->list);

 ap->addr.s_addr = addr->s_addr;
 os_memcpy(ap->uuid, uuid, WPS_UUID_LEN);
 eloop_register_timeout(max_age, 0, wps_er_ap_timeout, er, ap);

 wpa_printf(MSG_DEBUG, "WPS ER: Added AP entry for %s (%s)",
     inet_ntoa(ap->addr), ap->location);


 ap->http = http_client_url(ap->location, ((void*)0), 10000,
       wps_er_http_dev_desc_cb, ap);
}
