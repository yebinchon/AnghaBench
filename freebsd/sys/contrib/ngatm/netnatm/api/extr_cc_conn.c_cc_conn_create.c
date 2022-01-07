
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccdata {int log; int orphaned_conns; } ;
struct ccconn {struct ccdata* cc; int parties; int * port; int state; } ;


 int CCLOG_CONN_INST ;
 struct ccconn* CCZALLOC (int) ;
 int CONN_NULL ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct ccconn*,int ) ;
 int cc_conn_log (struct ccconn*,char*,char*) ;
 int port_link ;

struct ccconn *
cc_conn_create(struct ccdata *cc)
{
 struct ccconn *conn;

 conn = CCZALLOC(sizeof(*conn));
 if (conn == ((void*)0))
  return (((void*)0));

 conn->state = CONN_NULL;
 conn->port = ((void*)0);
 conn->cc = cc;
 LIST_INIT(&conn->parties);

 LIST_INSERT_HEAD(&cc->orphaned_conns, conn, port_link);

 if (conn->cc->log & CCLOG_CONN_INST)
  cc_conn_log(conn, "created %s", "orphaned");

 return (conn);
}
