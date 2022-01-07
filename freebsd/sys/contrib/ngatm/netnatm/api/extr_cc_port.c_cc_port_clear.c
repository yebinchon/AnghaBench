
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ccport {int addr_list; } ;
struct ccdata {int dummy; } ;
struct ccaddr {int dummy; } ;


 int CCFREE (struct ccaddr*) ;
 int ENOENT ;
 struct ccaddr* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct ccaddr*,int ) ;
 struct ccport* find_port (struct ccdata*,int ) ;
 int port_link ;

int
cc_port_clear(struct ccdata *cc, u_int portno)
{
 struct ccaddr *addr;
 struct ccport *port;

 if ((port = find_port(cc, portno)) == ((void*)0))
  return (ENOENT);

 while ((addr = TAILQ_FIRST(&port->addr_list)) != ((void*)0)) {
  TAILQ_REMOVE(&port->addr_list, addr, port_link);
  CCFREE(addr);
 }
 return (0);
}
