
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_addr; int sin6_port; } ;
struct in_addr {int dummy; } ;
struct sockaddr_in {struct in_addr sin_addr; int sin_port; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {int acct_responses; int acct_bad_authenticators; int acct_requests; int unknown_acct_types; int malformed_acct_requests; int invalid_acct_requests; } ;
struct radius_server_data {int acct_sock; TYPE_1__ counters; scalar_t__ ipv6; } ;
struct radius_msg {int dummy; } ;
struct radius_hdr {int authenticator; int identifier; int code; } ;
struct TYPE_4__ {int acct_responses; int acct_bad_authenticators; int acct_requests; int unknown_acct_types; int malformed_acct_requests; } ;
struct radius_client {TYPE_2__ counters; int shared_secret_len; scalar_t__ shared_secret; } ;
typedef int socklen_t ;
typedef int from ;
typedef int abuf ;


 int AF_INET6 ;
 int MSG_INFO ;
 scalar_t__ MSG_MSGDUMP ;
 int RADIUS_CODE_ACCOUNTING_REQUEST ;
 int RADIUS_CODE_ACCOUNTING_RESPONSE ;
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
 int radius_msg_finish_acct_resp (struct radius_msg*,int *,int ,int ) ;
 int radius_msg_free (struct radius_msg*) ;
 struct wpabuf* radius_msg_get_buf (struct radius_msg*) ;
 struct radius_hdr* radius_msg_get_hdr (struct radius_msg*) ;
 struct radius_msg* radius_msg_new (int ,int ) ;
 struct radius_msg* radius_msg_parse (int *,int) ;
 scalar_t__ radius_msg_verify_acct_req (struct radius_msg*,int *,int ) ;
 struct radius_client* radius_server_get_client (struct radius_server_data*,struct in_addr*,int) ;
 int recvfrom (int,int *,int ,int ,struct sockaddr*,int*) ;
 int sendto (int ,int ,int ,int ,struct sockaddr*,int) ;
 int strerror (int ) ;
 scalar_t__ wpa_debug_level ;
 int wpa_printf (int ,char*,int ) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static void radius_server_receive_acct(int sock, void *eloop_ctx,
           void *sock_ctx)
{
 struct radius_server_data *data = eloop_ctx;
 u8 *buf = ((void*)0);
 union {
  struct sockaddr_storage ss;
  struct sockaddr_in sin;



 } from;
 socklen_t fromlen;
 int len, res;
 struct radius_client *client = ((void*)0);
 struct radius_msg *msg = ((void*)0), *resp = ((void*)0);
 char abuf[50];
 int from_port = 0;
 struct radius_hdr *hdr;
 struct wpabuf *rbuf;

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
  data->counters.invalid_acct_requests++;
  goto fail;
 }

 msg = radius_msg_parse(buf, len);
 if (msg == ((void*)0)) {
  RADIUS_DEBUG("Parsing incoming RADIUS frame failed");
  data->counters.malformed_acct_requests++;
  client->counters.malformed_acct_requests++;
  goto fail;
 }

 os_free(buf);
 buf = ((void*)0);

 if (wpa_debug_level <= MSG_MSGDUMP) {
  radius_msg_dump(msg);
 }

 if (radius_msg_get_hdr(msg)->code != RADIUS_CODE_ACCOUNTING_REQUEST) {
  RADIUS_DEBUG("Unexpected RADIUS code %d",
        radius_msg_get_hdr(msg)->code);
  data->counters.unknown_acct_types++;
  client->counters.unknown_acct_types++;
  goto fail;
 }

 data->counters.acct_requests++;
 client->counters.acct_requests++;

 if (radius_msg_verify_acct_req(msg, (u8 *) client->shared_secret,
           client->shared_secret_len)) {
  RADIUS_DEBUG("Invalid Authenticator from %s", abuf);
  data->counters.acct_bad_authenticators++;
  client->counters.acct_bad_authenticators++;
  goto fail;
 }



 hdr = radius_msg_get_hdr(msg);

 resp = radius_msg_new(RADIUS_CODE_ACCOUNTING_RESPONSE, hdr->identifier);
 if (resp == ((void*)0))
  goto fail;

 radius_msg_finish_acct_resp(resp, (u8 *) client->shared_secret,
        client->shared_secret_len,
        hdr->authenticator);

 RADIUS_DEBUG("Reply to %s:%d", abuf, from_port);
 if (wpa_debug_level <= MSG_MSGDUMP) {
  radius_msg_dump(resp);
 }
 rbuf = radius_msg_get_buf(resp);
 data->counters.acct_responses++;
 client->counters.acct_responses++;
 res = sendto(data->acct_sock, wpabuf_head(rbuf), wpabuf_len(rbuf), 0,
       (struct sockaddr *) &from.ss, fromlen);
 if (res < 0) {
  wpa_printf(MSG_INFO, "sendto[RADIUS SRV]: %s",
      strerror(errno));
 }

fail:
 radius_msg_free(resp);
 radius_msg_free(msg);
 os_free(buf);
}
