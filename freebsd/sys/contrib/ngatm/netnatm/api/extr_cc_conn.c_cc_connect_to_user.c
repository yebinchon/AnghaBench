
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccuser {int queue_act; int connq; } ;
struct ccconn {struct ccuser* user; } ;


 int TAILQ_INSERT_TAIL (int *,struct ccconn*,int ) ;
 int cc_conn_log (struct ccconn*,char*,struct ccuser*) ;
 int connq_link ;

void
cc_connect_to_user(struct ccconn *conn, struct ccuser *user)
{

 if (conn->user != ((void*)0))
  cc_conn_log(conn, "still connected to %p", conn->user);
 conn->user = user;
 TAILQ_INSERT_TAIL(&user->connq, conn, connq_link);
 conn->user->queue_act++;
}
