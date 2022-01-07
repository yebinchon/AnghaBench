
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct ccport {scalar_t__ admin; int uarg; } ;
struct ccdata {TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* send_uni_glob ) (struct ccport*,int ,int ,int ,int *) ;} ;


 scalar_t__ CCPORT_RUNNING ;
 scalar_t__ CCPORT_STOPPED ;
 int EISCONN ;
 int ENOENT ;
 int UNIAPI_LINK_ESTABLISH_request ;
 struct ccport* find_port (struct ccdata*,int ) ;
 int stub1 (struct ccport*,int ,int ,int ,int *) ;

int
cc_port_start(struct ccdata *cc, u_int portno)
{
 struct ccport *port;

 if ((port = find_port(cc, portno)) == ((void*)0))
  return (ENOENT);
 if (port->admin != CCPORT_STOPPED)
  return (EISCONN);

 cc->funcs->send_uni_glob(port, port->uarg,
     UNIAPI_LINK_ESTABLISH_request, 0, ((void*)0));
 port->admin = CCPORT_RUNNING;

 return (0);
}
