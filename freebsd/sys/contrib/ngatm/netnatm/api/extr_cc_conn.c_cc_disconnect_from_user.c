
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccconn {TYPE_1__* user; } ;
struct TYPE_2__ {int queue_act; int connq; } ;


 int TAILQ_REMOVE (int *,struct ccconn*,int ) ;
 int cc_conn_log (struct ccconn*,char*,char*) ;
 int connq_link ;

void
cc_disconnect_from_user(struct ccconn *conn)
{

 if (conn->user == ((void*)0))
  cc_conn_log(conn, "no %s", "user");
 else {
  TAILQ_REMOVE(&conn->user->connq, conn, connq_link);
  conn->user->queue_act--;
  conn->user = ((void*)0);
 }
}
