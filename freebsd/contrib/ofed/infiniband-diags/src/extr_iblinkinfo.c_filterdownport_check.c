
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t portnum; int info; } ;
typedef TYPE_1__ ibnd_port_t ;
struct TYPE_7__ {size_t numports; TYPE_1__** ports; int guid; } ;
typedef TYPE_2__ ibnd_node_t ;


 int IB_LINK_DOWN ;
 int IB_PORT_STATE_F ;
 int filterdownports_fabric ;
 TYPE_2__* ibnd_find_node_guid (int ,int ) ;
 int mad_get_field (int ,int ,int ) ;

int filterdownport_check(ibnd_node_t * node, ibnd_port_t * port)
{
 ibnd_node_t *fsw;
 ibnd_port_t *fport;
 int fistate;

 fsw = ibnd_find_node_guid(filterdownports_fabric, node->guid);

 if (!fsw)
  return 0;

 if (port->portnum > fsw->numports)
  return 0;

 fport = fsw->ports[port->portnum];

 if (!fport)
  return 0;

 fistate = mad_get_field(fport->info, 0, IB_PORT_STATE_F);

 return (fistate == IB_LINK_DOWN) ? 1 : 0;
}
