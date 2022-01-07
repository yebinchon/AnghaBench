
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_addr; int sin6_port; } ;
struct in_addr {int dummy; } ;
struct sockaddr_in {struct in_addr sin_addr; int sin_port; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int bad_authenticators; int access_requests; int unknown_types; int malformed_access_requests; int invalid_requests; } ;
struct radius_server_data {TYPE_1__ counters; scalar_t__ ipv6; } ;
struct radius_msg {int dummy; } ;
struct TYPE_5__ {int bad_authenticators; int access_requests; int unknown_types; int malformed_access_requests; } ;
struct radius_client {TYPE_2__ counters; int shared_secret_len; scalar_t__ shared_secret; } ;
typedef int socklen_t ;
typedef int from ;
typedef int abuf ;
struct TYPE_6__ {char* code; } ;


 int AF_INET6 ;
 int MSG_INFO ;
 scalar_t__ MSG_MSGDUMP ;
 char* RADIUS_CODE_ACCESS_REQUEST ;
 char* RADIUS_CODE_COA_ACK ;
 char* RADIUS_CODE_COA_NAK ;
 char* RADIUS_CODE_DISCONNECT_ACK ;
 char* RADIUS_CODE_DISCONNECT_NAK ;
 int RADIUS_DEBUG (char*,...) ;
 int RADIUS_DUMP (char*,int *,int) ;
 int RADIUS_MAX_MSG_LEN ;
 int errno ;
 int inet_ntoa (struct in_addr) ;
 int * inet_ntop (int ,int *,char*,int) ;
 int ntohs (int ) ;
 int os_free (int *) ;
 int * os_malloc (int ) ;
 int os_strlcpy (char*,int ,int) ;
 int radius_msg_dump (struct radius_msg*) ;
 int radius_msg_free (struct radius_msg*) ;
 TYPE_3__* radius_msg_get_hdr (struct radius_msg*) ;
 struct radius_msg* radius_msg_parse (int *,int) ;
 scalar_t__ radius_msg_verify_msg_auth (struct radius_msg*,int *,int ,int *) ;
 struct radius_client* radius_server_get_client (struct radius_server_data*,struct in_addr*,int) ;
 int radius_server_receive_coa_resp (struct radius_server_data*,struct radius_client*,struct radius_msg*,int) ;
 int radius_server_receive_disconnect_resp (struct radius_server_data*,struct radius_client*,struct radius_msg*,int) ;
 int radius_server_request (struct radius_server_data*,struct radius_msg*,struct sockaddr*,int,struct radius_client*,char*,int,int *) ;
 int recvfrom (int,int *,int ,int ,struct sockaddr*,int*) ;
 int strerror (int ) ;
 scalar_t__ wpa_debug_level ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static void radius_server_receive_auth(int sock, void *eloop_ctx,
           void *sock_ctx)
{
 struct radius_server_data *data = eloop_ctx;
 u8 *buf = ((void*)0);
 union {
  struct sockaddr_storage ss;
  struct sockaddr_in sin;



 } from;
 socklen_t fromlen;
 int len;
 struct radius_client *client = ((void*)0);
 struct radius_msg *msg = ((void*)0);
 char abuf[50];
 int from_port = 0;

 buf = os_malloc(RADIUS_MAX_MSG_LEN);
 if (buf == ((void*)0)) {
  goto fail;
 }

 fromlen = sizeof(from);
 len = recvfrom(sock, buf, RADIUS_MAX_MSG_LEN, 0,
         (struct sockaddr *) &from.ss, &fromlen);
 if (len < 0) {
  wpa_printf(MSG_INFO, "recvfrom[radius_server]: %s",
      strerror(errno));
  goto fail;
 }
 if (!data->ipv6) {
  os_strlcpy(abuf, inet_ntoa(from.sin.sin_addr), sizeof(abuf));
  from_port = ntohs(from.sin.sin_port);
  RADIUS_DEBUG("Received %d bytes from %s:%d",
        len, abuf, from_port);

  client = radius_server_get_client(data, &from.sin.sin_addr, 0);
 }

 RADIUS_DUMP("Received data", buf, len);

 if (client == ((void*)0)) {
  RADIUS_DEBUG("Unknown client %s - packet ignored", abuf);
  data->counters.invalid_requests++;
  goto fail;
 }

 msg = radius_msg_parse(buf, len);
 if (msg == ((void*)0)) {
  RADIUS_DEBUG("Parsing incoming RADIUS frame failed");
  data->counters.malformed_access_requests++;
  client->counters.malformed_access_requests++;
  goto fail;
 }

 os_free(buf);
 buf = ((void*)0);

 if (wpa_debug_level <= MSG_MSGDUMP) {
  radius_msg_dump(msg);
 }

 if (radius_msg_get_hdr(msg)->code == RADIUS_CODE_DISCONNECT_ACK) {
  radius_server_receive_disconnect_resp(data, client, msg, 1);
  return;
 }

 if (radius_msg_get_hdr(msg)->code == RADIUS_CODE_DISCONNECT_NAK) {
  radius_server_receive_disconnect_resp(data, client, msg, 0);
  return;
 }

 if (radius_msg_get_hdr(msg)->code == RADIUS_CODE_COA_ACK) {
  radius_server_receive_coa_resp(data, client, msg, 1);
  return;
 }

 if (radius_msg_get_hdr(msg)->code == RADIUS_CODE_COA_NAK) {
  radius_server_receive_coa_resp(data, client, msg, 0);
  return;
 }

 if (radius_msg_get_hdr(msg)->code != RADIUS_CODE_ACCESS_REQUEST) {
  RADIUS_DEBUG("Unexpected RADIUS code %d",
        radius_msg_get_hdr(msg)->code);
  data->counters.unknown_types++;
  client->counters.unknown_types++;
  goto fail;
 }

 data->counters.access_requests++;
 client->counters.access_requests++;

 if (radius_msg_verify_msg_auth(msg, (u8 *) client->shared_secret,
           client->shared_secret_len, ((void*)0))) {
  RADIUS_DEBUG("Invalid Message-Authenticator from %s", abuf);
  data->counters.bad_authenticators++;
  client->counters.bad_authenticators++;
  goto fail;
 }

 if (radius_server_request(data, msg, (struct sockaddr *) &from,
      fromlen, client, abuf, from_port, ((void*)0)) ==
     -2)
  return;

fail:
 radius_msg_free(msg);
 os_free(buf);
}
