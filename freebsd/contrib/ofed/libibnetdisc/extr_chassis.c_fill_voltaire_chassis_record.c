
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int portnum; struct TYPE_16__* remoteport; TYPE_2__* node; } ;
typedef TYPE_1__ ibnd_port_t ;
struct TYPE_17__ {int ch_found; int numports; scalar_t__ type; TYPE_1__** ports; int ch_type; } ;
typedef TYPE_2__ ibnd_node_t ;


 scalar_t__ IB_NODE_SWITCH ;
 int get_router_slot (TYPE_2__*,TYPE_1__*) ;
 int get_sfb_slot (TYPE_2__*,TYPE_1__*) ;
 int get_slb_slot (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ is_line (TYPE_2__*) ;
 int is_line_4700 (TYPE_2__*) ;
 scalar_t__ is_router (TYPE_2__*) ;
 scalar_t__ is_spine (TYPE_2__*) ;
 int is_spine_4700x2 (TYPE_2__*) ;
 int voltaire_portmap (TYPE_1__*) ;

__attribute__((used)) static int fill_voltaire_chassis_record(ibnd_node_t * node)
{
 int p = 0;
 ibnd_port_t *port;
 ibnd_node_t *remnode = 0;

 if (node->ch_found)
  return 0;
 node->ch_found = 1;




 if (is_router(node))

  for (p = 1; p <= node->numports; p++) {
   port = node->ports[p];
   if (port && is_spine(port->remoteport->node))
    get_router_slot(node, port->remoteport);
  }
 else if (is_spine(node)) {
  int is_4700x2 = is_spine_4700x2(node);

  for (p = 1; p <= node->numports; p++) {
   port = node->ports[p];
   if (!port || !port->remoteport)
    continue;





   if (is_4700x2 && (port->portnum > 18))
    continue;

   remnode = port->remoteport->node;
   if (remnode->type != IB_NODE_SWITCH) {
    if (!remnode->ch_found)
     get_router_slot(remnode, port);
    continue;
   }
   if (!node->ch_type)

    get_sfb_slot(node, port->remoteport);


  }

 } else if (is_line(node)) {
  int is_4700_line = is_line_4700(node);

  for (p = 1; p <= node->numports; p++) {
   port = node->ports[p];
   if (!port || !port->remoteport)
    continue;

   if ((is_4700_line && (port->portnum > 18)) ||
       (!is_4700_line && (port->portnum > 12)))
    continue;


   get_slb_slot(node, port->remoteport);
   break;
  }
 }


 for (p = 1; p <= node->numports; p++) {
  port = node->ports[p];
  if (!port)
   continue;
  voltaire_portmap(port);
 }

 return 0;
}
