
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct sockaddr {int dummy; } ;
struct radius_session {char const* sess_id; int last_from_port; scalar_t__ last_identifier; int last_fromlen; int * last_authenticator; struct radius_msg* last_reply; TYPE_3__* eap_if; int last_from; int last_from_addr; struct radius_msg* last_msg; int eap; scalar_t__ macacl; } ;
struct TYPE_4__ {int packets_dropped; int access_challenges; int access_rejects; int access_accepts; int dup_access_requests; } ;
struct radius_server_data {TYPE_1__ counters; int auth_sock; } ;
struct radius_msg {int dummy; } ;
struct radius_hdr {scalar_t__ identifier; int code; struct sockaddr* authenticator; } ;
struct TYPE_5__ {int packets_dropped; int access_challenges; int access_rejects; int access_accepts; int dup_access_requests; } ;
struct radius_client {TYPE_2__ counters; } ;
typedef int statebuf ;
typedef int socklen_t ;
struct TYPE_6__ {scalar_t__ eapSuccess; scalar_t__ eapFail; struct wpabuf* eapReqData; scalar_t__ eapReq; int eapResp; struct wpabuf* eapRespData; } ;


 int MSG_INFO ;
 scalar_t__ MSG_MSGDUMP ;
 int RADIUS_ATTR_STATE ;



 int RADIUS_DEBUG (char*,...) ;
 int RADIUS_DUMP (char*,int ,int ) ;
 int RADIUS_SESSION_MAINTAIN ;
 int TRUE ;
 unsigned int WPA_GET_BE32 (int *) ;
 int db_update_last_msk (struct radius_session*,char*) ;
 int eap_server_sm_step (int ) ;
 scalar_t__ eap_sm_method_pending (int ) ;
 int eloop_cancel_timeout (int ,struct radius_server_data*,struct radius_session*) ;
 int eloop_register_timeout (int ,int ,int ,struct radius_server_data*,struct radius_session*) ;
 int errno ;
 int os_free (int ) ;
 scalar_t__ os_memcmp (int *,struct sockaddr*,int) ;
 int os_memcpy (int *,struct sockaddr*,int) ;
 int os_strdup (char const*) ;
 int radius_msg_dump (struct radius_msg*) ;
 int radius_msg_free (struct radius_msg*) ;
 int radius_msg_get_attr (struct radius_msg*,int ,int *,int) ;
 struct wpabuf* radius_msg_get_buf (struct radius_msg*) ;
 struct wpabuf* radius_msg_get_eap (struct radius_msg*) ;
 struct radius_hdr* radius_msg_get_hdr (struct radius_msg*) ;
 struct radius_msg* radius_server_encapsulate_eap (struct radius_server_data*,struct radius_client*,struct radius_session*,struct radius_msg*) ;
 struct radius_session* radius_server_get_new_session (struct radius_server_data*,struct radius_client*,struct radius_msg*,char const*) ;
 struct radius_session* radius_server_get_session (struct radius_client*,unsigned int) ;
 int radius_server_hs20_t_c_check (struct radius_session*,struct radius_msg*) ;
 struct radius_msg* radius_server_macacl (struct radius_server_data*,struct radius_client*,struct radius_session*,struct radius_msg*) ;
 int radius_server_reject (struct radius_server_data*,struct radius_client*,struct radius_msg*,struct sockaddr*,int,char const*,int) ;
 int radius_server_session_remove_timeout ;
 int sendto (int ,int ,int ,int ,struct sockaddr*,int) ;
 int srv_log (struct radius_session*,char*) ;
 int strerror (int ) ;
 scalar_t__ wpa_debug_level ;
 int wpa_printf (int ,char*,int ) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static int radius_server_request(struct radius_server_data *data,
     struct radius_msg *msg,
     struct sockaddr *from, socklen_t fromlen,
     struct radius_client *client,
     const char *from_addr, int from_port,
     struct radius_session *force_sess)
{
 struct wpabuf *eap = ((void*)0);
 int res, state_included = 0;
 u8 statebuf[4];
 unsigned int state;
 struct radius_session *sess;
 struct radius_msg *reply;
 int is_complete = 0;

 if (force_sess)
  sess = force_sess;
 else {
  res = radius_msg_get_attr(msg, RADIUS_ATTR_STATE, statebuf,
       sizeof(statebuf));
  state_included = res >= 0;
  if (res == sizeof(statebuf)) {
   state = WPA_GET_BE32(statebuf);
   sess = radius_server_get_session(client, state);
  } else {
   sess = ((void*)0);
  }
 }

 if (sess) {
  RADIUS_DEBUG("Request for session 0x%x", sess->sess_id);
 } else if (state_included) {
  RADIUS_DEBUG("State attribute included but no session found");
  radius_server_reject(data, client, msg, from, fromlen,
         from_addr, from_port);
  return -1;
 } else {
  sess = radius_server_get_new_session(data, client, msg,
           from_addr);
  if (sess == ((void*)0)) {
   RADIUS_DEBUG("Could not create a new session");
   radius_server_reject(data, client, msg, from, fromlen,
          from_addr, from_port);
   return -1;
  }
 }

 if (sess->last_from_port == from_port &&
     sess->last_identifier == radius_msg_get_hdr(msg)->identifier &&
     os_memcmp(sess->last_authenticator,
        radius_msg_get_hdr(msg)->authenticator, 16) == 0) {
  RADIUS_DEBUG("Duplicate message from %s", from_addr);
  data->counters.dup_access_requests++;
  client->counters.dup_access_requests++;

  if (sess->last_reply) {
   struct wpabuf *buf;
   buf = radius_msg_get_buf(sess->last_reply);
   res = sendto(data->auth_sock, wpabuf_head(buf),
         wpabuf_len(buf), 0,
         (struct sockaddr *) from, fromlen);
   if (res < 0) {
    wpa_printf(MSG_INFO, "sendto[RADIUS SRV]: %s",
        strerror(errno));
   }
   return 0;
  }

  RADIUS_DEBUG("No previous reply available for duplicate "
        "message");
  return -1;
 }

 eap = radius_msg_get_eap(msg);
 if (eap == ((void*)0) && sess->macacl) {
  reply = radius_server_macacl(data, client, sess, msg);
  if (reply == ((void*)0))
   return -1;
  goto send_reply;
 }
 if (eap == ((void*)0)) {
  RADIUS_DEBUG("No EAP-Message in RADIUS packet from %s",
        from_addr);
  data->counters.packets_dropped++;
  client->counters.packets_dropped++;
  return -1;
 }

 RADIUS_DUMP("Received EAP data", wpabuf_head(eap), wpabuf_len(eap));
 wpabuf_free(sess->eap_if->eapRespData);
 sess->eap_if->eapRespData = eap;
 sess->eap_if->eapResp = TRUE;
 eap_server_sm_step(sess->eap);

 if ((sess->eap_if->eapReq || sess->eap_if->eapSuccess ||
      sess->eap_if->eapFail) && sess->eap_if->eapReqData) {
  RADIUS_DUMP("EAP data from the state machine",
       wpabuf_head(sess->eap_if->eapReqData),
       wpabuf_len(sess->eap_if->eapReqData));
 } else if (sess->eap_if->eapFail) {
  RADIUS_DEBUG("No EAP data from the state machine, but eapFail "
        "set");
 } else if (eap_sm_method_pending(sess->eap)) {
  radius_msg_free(sess->last_msg);
  sess->last_msg = msg;
  sess->last_from_port = from_port;
  os_free(sess->last_from_addr);
  sess->last_from_addr = os_strdup(from_addr);
  sess->last_fromlen = fromlen;
  os_memcpy(&sess->last_from, from, fromlen);
  return -2;
 } else {
  RADIUS_DEBUG("No EAP data from the state machine - ignore this"
        " Access-Request silently (assuming it was a "
        "duplicate)");
  data->counters.packets_dropped++;
  client->counters.packets_dropped++;
  return -1;
 }

 if (sess->eap_if->eapSuccess || sess->eap_if->eapFail)
  is_complete = 1;
 if (sess->eap_if->eapFail) {
  srv_log(sess, "EAP authentication failed");
  db_update_last_msk(sess, "FAIL");
 } else if (sess->eap_if->eapSuccess) {
  srv_log(sess, "EAP authentication succeeded");
 }

 if (sess->eap_if->eapSuccess)
  radius_server_hs20_t_c_check(sess, msg);

 reply = radius_server_encapsulate_eap(data, client, sess, msg);

send_reply:
 if (reply) {
  struct wpabuf *buf;
  struct radius_hdr *hdr;

  RADIUS_DEBUG("Reply to %s:%d", from_addr, from_port);
  if (wpa_debug_level <= MSG_MSGDUMP) {
   radius_msg_dump(reply);
  }

  switch (radius_msg_get_hdr(reply)->code) {
  case 130:
   srv_log(sess, "Sending Access-Accept");
   data->counters.access_accepts++;
   client->counters.access_accepts++;
   break;
  case 128:
   srv_log(sess, "Sending Access-Reject");
   data->counters.access_rejects++;
   client->counters.access_rejects++;
   break;
  case 129:
   data->counters.access_challenges++;
   client->counters.access_challenges++;
   break;
  }
  buf = radius_msg_get_buf(reply);
  res = sendto(data->auth_sock, wpabuf_head(buf),
        wpabuf_len(buf), 0,
        (struct sockaddr *) from, fromlen);
  if (res < 0) {
   wpa_printf(MSG_INFO, "sendto[RADIUS SRV]: %s",
       strerror(errno));
  }
  radius_msg_free(sess->last_reply);
  sess->last_reply = reply;
  sess->last_from_port = from_port;
  hdr = radius_msg_get_hdr(msg);
  sess->last_identifier = hdr->identifier;
  os_memcpy(sess->last_authenticator, hdr->authenticator, 16);
 } else {
  data->counters.packets_dropped++;
  client->counters.packets_dropped++;
 }

 if (is_complete) {
  RADIUS_DEBUG("Removing completed session 0x%x after timeout",
        sess->sess_id);
  eloop_cancel_timeout(radius_server_session_remove_timeout,
         data, sess);
  eloop_register_timeout(RADIUS_SESSION_MAINTAIN, 0,
           radius_server_session_remove_timeout,
           data, sess);
 }

 return 0;
}
