
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ccport {scalar_t__ admin; int conn_list; } ;
struct ccdata {int dummy; } ;


 scalar_t__ CCPORT_RUNNING ;
 scalar_t__ CCPORT_STOPPED ;
 int ENOENT ;
 int ENOTCONN ;
 int LIST_EMPTY (int *) ;
 int LIST_FIRST (int *) ;
 int cc_conn_destroy (int ) ;
 struct ccport* find_port (struct ccdata*,int ) ;

int
cc_port_stop(struct ccdata *cc, u_int portno)
{
 struct ccport *port;

 if ((port = find_port(cc, portno)) == ((void*)0))
  return (ENOENT);
 if (port->admin != CCPORT_RUNNING)
  return (ENOTCONN);

 port->admin = CCPORT_STOPPED;




 while (!LIST_EMPTY(&port->conn_list))
  cc_conn_destroy(LIST_FIRST(&port->conn_list));

 return (0);
}
