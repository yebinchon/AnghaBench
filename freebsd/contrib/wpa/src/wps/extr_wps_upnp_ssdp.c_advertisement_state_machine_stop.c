
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct advertisement_state_machine {scalar_t__ state; int type; } ;
struct upnp_wps_device_sm {scalar_t__ multicast_sd; struct advertisement_state_machine advertisement; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int dest ;


 int ADVERTISE_DOWN ;
 int AF_INET ;
 int MSG_INFO ;
 int UPNP_MULTICAST_ADDRESS ;
 int UPNP_MULTICAST_PORT ;
 int advertisement_state_machine_handler ;
 int eloop_cancel_timeout (int ,int *,struct upnp_wps_device_sm*) ;
 int errno ;
 int htons (int ) ;
 int inet_addr (int ) ;
 struct wpabuf* next_advertisement (struct upnp_wps_device_sm*,struct advertisement_state_machine*,int*) ;
 int os_memset (struct sockaddr_in*,int ,int) ;
 scalar_t__ sendto (scalar_t__,int ,int ,int ,struct sockaddr*,int) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ,int ) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;

void advertisement_state_machine_stop(struct upnp_wps_device_sm *sm,
          int send_byebye)
{
 struct advertisement_state_machine *a = &sm->advertisement;
 int islast = 0;
 struct wpabuf *msg;
 struct sockaddr_in dest;

 eloop_cancel_timeout(advertisement_state_machine_handler, ((void*)0), sm);
 if (!send_byebye || sm->multicast_sd < 0)
  return;

 a->type = ADVERTISE_DOWN;
 a->state = 0;

 os_memset(&dest, 0, sizeof(dest));
 dest.sin_family = AF_INET;
 dest.sin_addr.s_addr = inet_addr(UPNP_MULTICAST_ADDRESS);
 dest.sin_port = htons(UPNP_MULTICAST_PORT);

 while (!islast) {
  msg = next_advertisement(sm, a, &islast);
  if (msg == ((void*)0))
   break;
  if (sendto(sm->multicast_sd, wpabuf_head(msg), wpabuf_len(msg),
      0, (struct sockaddr *) &dest, sizeof(dest)) < 0) {
   wpa_printf(MSG_INFO, "WPS UPnP: Advertisement sendto "
       "failed: %d (%s)", errno, strerror(errno));
  }
  wpabuf_free(msg);
  a->state++;
 }
}
