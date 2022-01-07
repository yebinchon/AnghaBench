
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_ie_cause {int dummy; } ;
struct ccuser {int connq; int aborted; } ;
struct ccconn {struct uni_ie_cause* cause; } ;


 int CONN_SIG_USER_ABORT ;
 struct ccconn* TAILQ_FIRST (int *) ;
 int USER_NULL ;
 int cc_conn_dispatch (struct ccconn*) ;
 int cc_conn_reset_acceptor (struct ccconn*) ;
 int cc_conn_sig (struct ccconn*,int ,int *) ;
 int cc_disconnect_from_user (struct ccconn*) ;
 int cc_user_reset (struct ccuser*) ;
 int memset (struct uni_ie_cause*,int ,int) ;
 int set_state (struct ccuser*,int ) ;

__attribute__((used)) static void
cc_user_abort(struct ccuser *user, const struct uni_ie_cause *cause)
{
 struct ccconn *conn;
 set_state(user, USER_NULL);
 if (!user->aborted) {
  if ((conn = TAILQ_FIRST(&user->connq)) != ((void*)0)) {
   memset(conn->cause, 0, sizeof(conn->cause));
   if (cause != ((void*)0))
    conn->cause[0] = *cause;
   cc_conn_reset_acceptor(conn);
   cc_disconnect_from_user(conn);
   cc_conn_sig(conn, CONN_SIG_USER_ABORT, ((void*)0));
  }
 }

 while ((conn = TAILQ_FIRST(&user->connq)) != ((void*)0)) {

  cc_disconnect_from_user(conn);
  cc_conn_dispatch(conn);
 }

 cc_user_reset(user);
}
