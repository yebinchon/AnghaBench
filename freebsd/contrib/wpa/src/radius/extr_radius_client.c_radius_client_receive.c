
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radius_rx_handler {int (* handler ) (struct radius_msg*,struct radius_msg*,int ,int ,int ) ;int data; } ;
struct TYPE_2__ {int sec; int usec; } ;
struct radius_msg_list {scalar_t__ msg_type; int addr; int shared_secret_len; int shared_secret; struct radius_msg* msg; struct radius_msg_list* next; TYPE_1__ last_attempt; } ;
struct radius_msg {int dummy; } ;
struct radius_hdr {int code; scalar_t__ identifier; } ;
struct radius_client_data {size_t num_acct_handlers; size_t num_auth_handlers; int ctx; int num_msgs; struct radius_msg_list* msgs; struct radius_rx_handler* auth_handlers; struct radius_rx_handler* acct_handlers; struct hostapd_radius_servers* conf; } ;
struct os_reltime {int sec; int usec; } ;
struct hostapd_radius_servers {scalar_t__ msg_dumps; struct hostapd_radius_server* auth_server; struct hostapd_radius_server* acct_server; } ;
struct hostapd_radius_server {int round_trip_time; int unknown_types; int bad_authenticators; int responses; int access_challenges; int access_rejects; int access_accepts; int malformed_responses; } ;
typedef int buf ;
typedef scalar_t__ RadiusType ;
typedef int RadiusRxResult ;


 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_MODULE_RADIUS ;
 int MSG_DONTWAIT ;
 int MSG_INFO ;
 scalar_t__ RADIUS_ACCT ;
 scalar_t__ RADIUS_ACCT_INTERIM ;
 int errno ;
 int hostapd_logger (int ,int ,int ,int ,char*,...) ;
 int os_get_reltime (struct os_reltime*) ;
 int radius_client_msg_free (struct radius_msg_list*) ;
 int radius_msg_dump (struct radius_msg*) ;
 int radius_msg_free (struct radius_msg*) ;
 struct radius_hdr* radius_msg_get_hdr (struct radius_msg*) ;
 struct radius_msg* radius_msg_parse (unsigned char*,int) ;
 int recv (int,unsigned char*,int,int ) ;
 int strerror (int ) ;
 int stub1 (struct radius_msg*,struct radius_msg*,int ,int ,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void radius_client_receive(int sock, void *eloop_ctx, void *sock_ctx)
{
 struct radius_client_data *radius = eloop_ctx;
 struct hostapd_radius_servers *conf = radius->conf;
 RadiusType msg_type = (RadiusType) sock_ctx;
 int len, roundtrip;
 unsigned char buf[3000];
 struct radius_msg *msg;
 struct radius_hdr *hdr;
 struct radius_rx_handler *handlers;
 size_t num_handlers, i;
 struct radius_msg_list *req, *prev_req;
 struct os_reltime now;
 struct hostapd_radius_server *rconf;
 int invalid_authenticator = 0;

 if (msg_type == RADIUS_ACCT) {
  handlers = radius->acct_handlers;
  num_handlers = radius->num_acct_handlers;
  rconf = conf->acct_server;
 } else {
  handlers = radius->auth_handlers;
  num_handlers = radius->num_auth_handlers;
  rconf = conf->auth_server;
 }

 len = recv(sock, buf, sizeof(buf), MSG_DONTWAIT);
 if (len < 0) {
  wpa_printf(MSG_INFO, "recv[RADIUS]: %s", strerror(errno));
  return;
 }
 hostapd_logger(radius->ctx, ((void*)0), HOSTAPD_MODULE_RADIUS,
         HOSTAPD_LEVEL_DEBUG, "Received %d bytes from RADIUS "
         "server", len);
 if (len == sizeof(buf)) {
  wpa_printf(MSG_INFO, "RADIUS: Possibly too long UDP frame for our buffer - dropping it");
  return;
 }

 msg = radius_msg_parse(buf, len);
 if (msg == ((void*)0)) {
  wpa_printf(MSG_INFO, "RADIUS: Parsing incoming frame failed");
  rconf->malformed_responses++;
  return;
 }
 hdr = radius_msg_get_hdr(msg);

 hostapd_logger(radius->ctx, ((void*)0), HOSTAPD_MODULE_RADIUS,
         HOSTAPD_LEVEL_DEBUG, "Received RADIUS message");
 if (conf->msg_dumps)
  radius_msg_dump(msg);

 switch (hdr->code) {
 case 135:
  rconf->access_accepts++;
  break;
 case 133:
  rconf->access_rejects++;
  break;
 case 134:
  rconf->access_challenges++;
  break;
 case 132:
  rconf->responses++;
  break;
 }

 prev_req = ((void*)0);
 req = radius->msgs;
 while (req) {


  if ((req->msg_type == msg_type ||
       (req->msg_type == RADIUS_ACCT_INTERIM &&
        msg_type == RADIUS_ACCT)) &&
      radius_msg_get_hdr(req->msg)->identifier ==
      hdr->identifier)
   break;

  prev_req = req;
  req = req->next;
 }

 if (req == ((void*)0)) {
  hostapd_logger(radius->ctx, ((void*)0), HOSTAPD_MODULE_RADIUS,
          HOSTAPD_LEVEL_DEBUG,
          "No matching RADIUS request found (type=%d "
          "id=%d) - dropping packet",
          msg_type, hdr->identifier);
  goto fail;
 }

 os_get_reltime(&now);
 roundtrip = (now.sec - req->last_attempt.sec) * 100 +
  (now.usec - req->last_attempt.usec) / 10000;
 hostapd_logger(radius->ctx, req->addr, HOSTAPD_MODULE_RADIUS,
         HOSTAPD_LEVEL_DEBUG,
         "Received RADIUS packet matched with a pending "
         "request, round trip time %d.%02d sec",
         roundtrip / 100, roundtrip % 100);
 rconf->round_trip_time = roundtrip;


 if (prev_req)
  prev_req->next = req->next;
 else
  radius->msgs = req->next;
 radius->num_msgs--;

 for (i = 0; i < num_handlers; i++) {
  RadiusRxResult res;
  res = handlers[i].handler(msg, req->msg, req->shared_secret,
       req->shared_secret_len,
       handlers[i].data);
  switch (res) {
  case 130:
   radius_msg_free(msg);

  case 129:
   radius_client_msg_free(req);
   return;
  case 131:
   invalid_authenticator++;

  case 128:

   break;
  }
 }

 if (invalid_authenticator)
  rconf->bad_authenticators++;
 else
  rconf->unknown_types++;
 hostapd_logger(radius->ctx, req->addr, HOSTAPD_MODULE_RADIUS,
         HOSTAPD_LEVEL_DEBUG, "No RADIUS RX handler found "
         "(type=%d code=%d id=%d)%s - dropping packet",
         msg_type, hdr->code, hdr->identifier,
         invalid_authenticator ? " [INVALID AUTHENTICATOR]" :
         "");
 radius_client_msg_free(req);

 fail:
 radius_msg_free(msg);
}
