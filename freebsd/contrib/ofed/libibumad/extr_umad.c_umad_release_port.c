
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int portnum; int ca_name; } ;
typedef TYPE_1__ umad_port_t ;


 int DEBUG (char*,int ,int ) ;
 int ENODEV ;
 int TRACE (char*,int ,int ) ;
 int release_port (TYPE_1__*) ;

int umad_release_port(umad_port_t * port)
{
 int r;

 TRACE("port %s:%d", port->ca_name, port->portnum);
 if (!port)
  return -ENODEV;

 if ((r = release_port(port)) < 0)
  return r;

 DEBUG("releasing %s:%d", port->ca_name, port->portnum);
 return 0;
}
