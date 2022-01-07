
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upnp_wps_device_sm {int msearch_replies; } ;
struct sockaddr_in {int dummy; } ;
struct advertisement_state_machine {int list; int client; scalar_t__ state; int type; } ;


 int MAX_MSEARCH ;
 int MSEARCH_REPLY ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int dl_list_add (int *,int *) ;
 int dl_list_len (int *) ;
 int eloop_cancel_timeout (int ,struct upnp_wps_device_sm*,struct advertisement_state_machine*) ;
 scalar_t__ eloop_register_timeout (int,int,int ,struct upnp_wps_device_sm*,struct advertisement_state_machine*) ;
 int msearchreply_state_machine_handler ;
 int os_free (struct advertisement_state_machine*) ;
 int os_memcpy (int *,struct sockaddr_in*,int) ;
 int os_random () ;
 struct advertisement_state_machine* os_zalloc (int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void msearchreply_state_machine_start(struct upnp_wps_device_sm *sm,
          struct sockaddr_in *client,
          int mx)
{
 struct advertisement_state_machine *a;
 int next_timeout_sec;
 int next_timeout_msec;
 int replies;

 replies = dl_list_len(&sm->msearch_replies);
 wpa_printf(MSG_DEBUG, "WPS UPnP: M-SEARCH reply start (%d "
     "outstanding)", replies);
 if (replies >= MAX_MSEARCH) {
  wpa_printf(MSG_INFO, "WPS UPnP: Too many outstanding "
      "M-SEARCH replies");
  return;
 }

 a = os_zalloc(sizeof(*a));
 if (a == ((void*)0))
  return;
 a->type = MSEARCH_REPLY;
 a->state = 0;
 os_memcpy(&a->client, client, sizeof(*client));

 next_timeout_msec = (1000 * mx * (os_random() & 0xFF)) >> 8;
 next_timeout_sec = next_timeout_msec / 1000;
 next_timeout_msec = next_timeout_msec % 1000;
 if (eloop_register_timeout(next_timeout_sec, next_timeout_msec,
       msearchreply_state_machine_handler, sm,
       a)) {

  goto fail;
 }

 dl_list_add(&sm->msearch_replies, &a->list);
 return;

fail:
 wpa_printf(MSG_INFO, "WPS UPnP: M-SEARCH reply failure!");
 eloop_cancel_timeout(msearchreply_state_machine_handler, sm, a);
 os_free(a);
}
