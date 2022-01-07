
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_session {struct radius_session* next; } ;
struct radius_server_data {int dummy; } ;


 int radius_server_session_free (struct radius_server_data*,struct radius_session*) ;

__attribute__((used)) static void radius_server_free_sessions(struct radius_server_data *data,
     struct radius_session *sessions)
{
 struct radius_session *session, *prev;

 session = sessions;
 while (session) {
  prev = session;
  session = session->next;
  radius_server_session_free(data, prev);
 }
}
