
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct iter_user_data {scalar_t__ group; } ;
struct TYPE_9__ {scalar_t__ remoteport; } ;
typedef TYPE_2__ ibnd_port_t ;
struct TYPE_10__ {int numports; TYPE_2__** ports; TYPE_1__* chassis; } ;
typedef TYPE_3__ ibnd_node_t ;
struct TYPE_8__ {scalar_t__ chassisnum; } ;


 int DEBUG (char*,TYPE_3__*) ;
 int out_ca (TYPE_3__*,scalar_t__,int *,int *,int *) ;
 int out_ca_port (TYPE_2__*,scalar_t__,int *) ;

__attribute__((used)) static void router_iter_func(ibnd_node_t * node, void *iter_user_data)
{
 ibnd_port_t *port;
 int p = 0;
 struct iter_user_data *data = (struct iter_user_data *)iter_user_data;

 DEBUG("RT: node %p\n", node);

 if (data->group && node->chassis && node->chassis->chassisnum)
  return;
 out_ca(node, data->group, ((void*)0), ((void*)0), ((void*)0));
 for (p = 1; p <= node->numports; p++) {
  port = node->ports[p];
  if (port && port->remoteport)
   out_ca_port(port, data->group, ((void*)0));
 }
}
