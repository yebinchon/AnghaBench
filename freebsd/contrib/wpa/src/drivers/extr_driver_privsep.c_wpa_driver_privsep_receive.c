
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_driver_privsep_data {int ctx; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int from ;
typedef enum privsep_event { ____Placeholder_privsep_event } privsep_event ;


 int EVENT_ASSOC ;
 int EVENT_ASSOCINFO ;
 int EVENT_DISASSOC ;
 int EVENT_SCAN_RESULTS ;
 int EVENT_SCAN_STARTED ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int errno ;
 int os_free (int *) ;
 int * os_malloc (size_t const) ;
 int os_memcpy (int*,int *,int) ;
 int recvfrom (int,int *,size_t const,int ,struct sockaddr*,int*) ;
 int strerror (int ) ;
 int wpa_driver_privsep_event_assoc (int ,int ,int *,size_t) ;
 int wpa_driver_privsep_event_auth (int ,int *,size_t) ;
 int wpa_driver_privsep_event_ft_response (int ,int *,size_t) ;
 int wpa_driver_privsep_event_interface_status (int ,int *,size_t) ;
 int wpa_driver_privsep_event_michael_mic_failure (int ,int *,size_t) ;
 int wpa_driver_privsep_event_pmkid_candidate (int ,int *,size_t) ;
 int wpa_driver_privsep_event_rx_eapol (int ,int *,size_t) ;
 int wpa_printf (int ,char*,int,...) ;
 int wpa_supplicant_event (int ,int ,int *) ;

__attribute__((used)) static void wpa_driver_privsep_receive(int sock, void *eloop_ctx,
           void *sock_ctx)
{
 struct wpa_driver_privsep_data *drv = eloop_ctx;
 u8 *buf, *event_buf;
 size_t event_len;
 int res, event;
 enum privsep_event e;
 struct sockaddr_un from;
 socklen_t fromlen = sizeof(from);
 const size_t buflen = 2000;

 buf = os_malloc(buflen);
 if (buf == ((void*)0))
  return;
 res = recvfrom(sock, buf, buflen, 0,
         (struct sockaddr *) &from, &fromlen);
 if (res < 0) {
  wpa_printf(MSG_ERROR, "recvfrom(priv_socket): %s",
      strerror(errno));
  os_free(buf);
  return;
 }

 wpa_printf(MSG_DEBUG, "privsep_driver: received %u bytes", res);

 if (res < (int) sizeof(int)) {
  wpa_printf(MSG_DEBUG, "Too short event message (len=%d)", res);
  return;
 }

 os_memcpy(&event, buf, sizeof(int));
 event_buf = &buf[sizeof(int)];
 event_len = res - sizeof(int);
 wpa_printf(MSG_DEBUG, "privsep: Event %d received (len=%lu)",
     event, (unsigned long) event_len);

 e = event;
 switch (e) {
 case 129:
  wpa_supplicant_event(drv->ctx, EVENT_SCAN_RESULTS, ((void*)0));
  break;
 case 128:
  wpa_supplicant_event(drv->ctx, EVENT_SCAN_STARTED, ((void*)0));
  break;
 case 138:
  wpa_driver_privsep_event_assoc(drv->ctx, EVENT_ASSOC,
            event_buf, event_len);
  break;
 case 135:
  wpa_supplicant_event(drv->ctx, EVENT_DISASSOC, ((void*)0));
  break;
 case 137:
  wpa_driver_privsep_event_assoc(drv->ctx, EVENT_ASSOCINFO,
            event_buf, event_len);
  break;
 case 132:
  wpa_driver_privsep_event_michael_mic_failure(
   drv->ctx, event_buf, event_len);
  break;
 case 133:
  wpa_driver_privsep_event_interface_status(drv->ctx, event_buf,
         event_len);
  break;
 case 131:
  wpa_driver_privsep_event_pmkid_candidate(drv->ctx, event_buf,
        event_len);
  break;
 case 134:
  wpa_driver_privsep_event_ft_response(drv->ctx, event_buf,
           event_len);
  break;
 case 130:
  wpa_driver_privsep_event_rx_eapol(drv->ctx, event_buf,
        event_len);
  break;
 case 136:
  wpa_driver_privsep_event_auth(drv->ctx, event_buf, event_len);
  break;
 }

 os_free(buf);
}
