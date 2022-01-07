
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccreq {int addr_list; int conn_list; int cookies; TYPE_1__* cc; } ;
struct ccport {int addr_list; int conn_list; int cookies; TYPE_1__* cc; } ;
struct ccaddr {int addr_list; int conn_list; int cookies; TYPE_1__* cc; } ;
struct TYPE_2__ {int port_list; } ;


 int CCFREE (struct ccreq*) ;
 int LIST_EMPTY (int *) ;
 int LIST_FIRST (int *) ;
 struct ccreq* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct ccreq*,int ) ;
 int cc_conn_abort (int ,int) ;
 int link ;
 int node_link ;
 int port_link ;

void
cc_port_destroy(struct ccport *port, int shutdown)
{
 struct ccaddr *addr;
 struct ccreq *r;

 TAILQ_REMOVE(&port->cc->port_list, port, node_link);

 while ((r = TAILQ_FIRST(&port->cookies)) != ((void*)0)) {
  TAILQ_REMOVE(&port->cookies, r, link);
  CCFREE(r);
 }




 while (!LIST_EMPTY(&port->conn_list))
  cc_conn_abort(LIST_FIRST(&port->conn_list), shutdown);




 while ((addr = TAILQ_FIRST(&port->addr_list)) != ((void*)0)) {
  TAILQ_REMOVE(&port->addr_list, addr, port_link);
  CCFREE(addr);
 }

 CCFREE(port);
}
