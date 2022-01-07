
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ccport {scalar_t__ admin; } ;
struct ccdata {int dummy; } ;


 scalar_t__ CCPORT_RUNNING ;
 int ENOENT ;
 struct ccport* find_port (struct ccdata*,int ) ;

int
cc_port_isrunning(struct ccdata *cc, u_int portno, int *state)
{
 struct ccport *port;

 if ((port = find_port(cc, portno)) == ((void*)0))
  return (ENOENT);
 if (port->admin == CCPORT_RUNNING)
  *state = 1;
 else
  *state = 0;
 return (0);
}
