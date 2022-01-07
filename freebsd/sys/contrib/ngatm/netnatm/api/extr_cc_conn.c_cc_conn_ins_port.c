
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; } ;
struct ccport {int conn_list; TYPE_1__ param; } ;
struct ccconn {struct ccport* port; } ;


 int LIST_INSERT_HEAD (int *,struct ccconn*,int ) ;
 int LIST_REMOVE (struct ccconn*,int ) ;
 int cc_conn_log (struct ccconn*,char*,int ) ;
 int cc_conn_rem_port (struct ccconn*) ;
 int port_link ;

void
cc_conn_ins_port(struct ccconn *conn, struct ccport *port)
{

 if (conn->port != ((void*)0)) {
  cc_conn_log(conn, "conn is already on port %u",
      conn->port->param.port);
  cc_conn_rem_port(conn);
 }
 LIST_REMOVE(conn, port_link);

 conn->port = port;
 LIST_INSERT_HEAD(&port->conn_list, conn, port_link);

}
