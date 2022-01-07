
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccconn {TYPE_1__* cc; int * port; } ;
struct TYPE_2__ {int orphaned_conns; } ;


 int LIST_INSERT_HEAD (int *,struct ccconn*,int ) ;
 int LIST_REMOVE (struct ccconn*,int ) ;
 int cc_conn_log (struct ccconn*,char*,char*) ;
 int port_link ;

void
cc_conn_rem_port(struct ccconn *conn)
{

 if (conn->port == ((void*)0)) {
  cc_conn_log(conn, "conn not on any %s", "port");
  return;
 }
 LIST_REMOVE(conn, port_link);
 conn->port = ((void*)0);
 LIST_INSERT_HEAD(&conn->cc->orphaned_conns, conn, port_link);
}
