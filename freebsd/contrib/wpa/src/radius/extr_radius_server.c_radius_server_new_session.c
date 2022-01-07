
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_session {struct radius_session* next; scalar_t__ sess_id; struct radius_client* client; struct radius_server_data* server; } ;
struct radius_server_data {scalar_t__ num_sess; int next_sess_id; } ;
struct radius_client {struct radius_session* sessions; } ;


 int RADIUS_DEBUG (char*) ;
 scalar_t__ RADIUS_MAX_SESSION ;
 int RADIUS_SESSION_TIMEOUT ;
 int eloop_register_timeout (int ,int ,int ,struct radius_server_data*,struct radius_session*) ;
 struct radius_session* os_zalloc (int) ;
 int radius_server_session_timeout ;

__attribute__((used)) static struct radius_session *
radius_server_new_session(struct radius_server_data *data,
     struct radius_client *client)
{
 struct radius_session *sess;

 if (data->num_sess >= RADIUS_MAX_SESSION) {
  RADIUS_DEBUG("Maximum number of existing session - no room "
        "for a new session");
  return ((void*)0);
 }

 sess = os_zalloc(sizeof(*sess));
 if (sess == ((void*)0))
  return ((void*)0);

 sess->server = data;
 sess->client = client;
 sess->sess_id = data->next_sess_id++;
 sess->next = client->sessions;
 client->sessions = sess;
 eloop_register_timeout(RADIUS_SESSION_TIMEOUT, 0,
          radius_server_session_timeout, data, sess);
 data->num_sess++;
 return sess;
}
