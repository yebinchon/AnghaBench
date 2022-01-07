
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct radius_session {void* eap; int last_from_port; int last_from_addr; int last_fromlen; int last_from; struct radius_msg* last_msg; struct radius_session* next; } ;
struct radius_server_data {struct radius_client* clients; } ;
struct radius_msg {int dummy; } ;
struct radius_client {struct radius_session* sessions; struct radius_client* next; } ;


 int RADIUS_DEBUG (char*) ;
 int eap_sm_pending_cb (void*) ;
 int radius_msg_free (struct radius_msg*) ;
 int radius_server_request (struct radius_server_data*,struct radius_msg*,struct sockaddr*,int ,struct radius_client*,int ,int ,struct radius_session*) ;

void radius_server_eap_pending_cb(struct radius_server_data *data, void *ctx)
{
 struct radius_client *cli;
 struct radius_session *s, *sess = ((void*)0);
 struct radius_msg *msg;

 if (data == ((void*)0))
  return;

 for (cli = data->clients; cli; cli = cli->next) {
  for (s = cli->sessions; s; s = s->next) {
   if (s->eap == ctx && s->last_msg) {
    sess = s;
    break;
   }
  }
  if (sess)
   break;
 }

 if (sess == ((void*)0)) {
  RADIUS_DEBUG("No session matched callback ctx");
  return;
 }

 msg = sess->last_msg;
 sess->last_msg = ((void*)0);
 eap_sm_pending_cb(sess->eap);
 if (radius_server_request(data, msg,
      (struct sockaddr *) &sess->last_from,
      sess->last_fromlen, cli,
      sess->last_from_addr,
      sess->last_from_port, sess) == -2)
  return;

 radius_msg_free(msg);
}
