
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int port; } ;
struct ccport {TYPE_1__ param; } ;



u_int
cc_port_no(struct ccport *port)
{
 return (port->param.port);
}
