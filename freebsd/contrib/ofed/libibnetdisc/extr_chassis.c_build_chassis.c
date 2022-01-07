
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int portnum; TYPE_1__* remoteport; } ;
typedef TYPE_2__ ibnd_port_t ;
struct TYPE_10__ {int numports; int ch_found; TYPE_2__** ports; } ;
typedef TYPE_3__ ibnd_node_t ;
typedef int ibnd_chassis_t ;
struct TYPE_8__ {TYPE_3__* node; } ;


 int insert_line_router (TYPE_3__*,int *) ;
 scalar_t__ insert_spine (TYPE_3__*,int *) ;
 scalar_t__ is_spine_4700x2 (TYPE_3__*) ;
 scalar_t__ pass_on_lines_catch_spines (int *) ;
 scalar_t__ pass_on_spines_catch_lines (int *) ;
 int pass_on_spines_interpolate_chguid (int *) ;

__attribute__((used)) static int build_chassis(ibnd_node_t * node, ibnd_chassis_t * chassis)
{
 int p = 0;
 ibnd_node_t *remnode = 0;
 ibnd_port_t *port = 0;


 if (insert_spine(node, chassis))
  return -1;


 for (p = 1; p <= node->numports; p++) {

  port = node->ports[p];
  if (!port || !port->remoteport)
   continue;





  if (is_spine_4700x2(node) && (port->portnum > 18))
   continue;

  remnode = port->remoteport->node;

  if (!remnode->ch_found)
   continue;

  insert_line_router(remnode, chassis);
 }

 if (pass_on_lines_catch_spines(chassis))
  return -1;


 if (pass_on_spines_catch_lines(chassis))
  return -1;




 if (pass_on_lines_catch_spines(chassis))
  return -1;
 if (pass_on_spines_catch_lines(chassis))
  return -1;
 pass_on_spines_interpolate_chguid(chassis);

 return 0;
}
