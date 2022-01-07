
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccuser {int connq; scalar_t__ aborted; } ;
struct ccconn {int dummy; } ;


 int ATMOP_ARRIVAL_OF_INCOMING_CALL ;
 int CONN_SIG_ARRIVAL ;
 struct ccconn* TAILQ_FIRST (int *) ;
 int USER_IN_ARRIVED ;
 int cc_conn_sig (struct ccconn*,int ,int *) ;
 int cc_user_send (struct ccuser*,int ,int *,int ) ;
 int set_state (struct ccuser*,int ) ;

__attribute__((used)) static void
do_arrival(struct ccuser *user)
{
 struct ccconn *conn;

 user->aborted = 0;
 if ((conn = TAILQ_FIRST(&user->connq)) != ((void*)0)) {
  set_state(user, USER_IN_ARRIVED);
  cc_user_send(user, ATMOP_ARRIVAL_OF_INCOMING_CALL, ((void*)0), 0);
  cc_conn_sig(conn, CONN_SIG_ARRIVAL, ((void*)0));
 }
}
