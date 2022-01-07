
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_session {unsigned int sess_id; struct radius_session* next; } ;
struct radius_client {struct radius_session* sessions; } ;



__attribute__((used)) static struct radius_session *
radius_server_get_session(struct radius_client *client, unsigned int sess_id)
{
 struct radius_session *sess = client->sessions;

 while (sess) {
  if (sess->sess_id == sess_id) {
   break;
  }
  sess = sess->next;
 }

 return sess;
}
