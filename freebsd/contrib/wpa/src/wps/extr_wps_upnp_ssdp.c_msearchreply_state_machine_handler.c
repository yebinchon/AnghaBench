
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct upnp_wps_device_sm {int multicast_sd; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int sin_port; int sin_addr; } ;
struct advertisement_state_machine {int state; TYPE_1__ client; } ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int eloop_register_timeout (int,int,void (*) (void*,void*),struct upnp_wps_device_sm*,struct advertisement_state_machine*) ;
 int errno ;
 int inet_ntoa (int ) ;
 int msearchreply_state_machine_stop (struct advertisement_state_machine*) ;
 struct wpabuf* next_advertisement (struct upnp_wps_device_sm*,struct advertisement_state_machine*,int*) ;
 int ntohs (int ) ;
 scalar_t__ sendto (int ,int ,int ,int ,struct sockaddr*,int) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static void msearchreply_state_machine_handler(void *eloop_data,
            void *user_ctx)
{
 struct advertisement_state_machine *a = user_ctx;
 struct upnp_wps_device_sm *sm = eloop_data;
 struct wpabuf *msg;
 int next_timeout_msec = 100;
 int next_timeout_sec = 0;
 int islast = 0;
 wpa_printf(MSG_MSGDUMP, "WPS UPnP: M-SEARCH reply state=%d (%s:%d)",
     a->state, inet_ntoa(a->client.sin_addr),
     ntohs(a->client.sin_port));
 msg = next_advertisement(sm, a, &islast);
 if (msg == ((void*)0))
  return;





 if (sendto(sm->multicast_sd, wpabuf_head(msg), wpabuf_len(msg), 0,
     (struct sockaddr *) &a->client, sizeof(a->client)) < 0) {
  wpa_printf(MSG_DEBUG, "WPS UPnP: M-SEARCH reply sendto "
      "errno %d (%s) for %s:%d",
      errno, strerror(errno),
      inet_ntoa(a->client.sin_addr),
      ntohs(a->client.sin_port));

 }
 wpabuf_free(msg);
 if (islast) {
  wpa_printf(MSG_DEBUG, "WPS UPnP: M-SEARCH reply done");
  msearchreply_state_machine_stop(a);
  return;
 }
 a->state++;

 wpa_printf(MSG_MSGDUMP, "WPS UPnP: M-SEARCH reply in %d.%03d sec",
     next_timeout_sec, next_timeout_msec);
 eloop_register_timeout(next_timeout_sec, next_timeout_msec,
          msearchreply_state_machine_handler, sm, a);
}
