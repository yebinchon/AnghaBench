
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct iter_diff_data {int diff_flags; int fabric2_prefix; int fabric1_prefix; } ;
struct TYPE_12__ {TYPE_2__* remoteport; int info; } ;
typedef TYPE_3__ ibnd_port_t ;
struct TYPE_13__ {int numports; TYPE_3__** ports; } ;
typedef TYPE_4__ ibnd_node_t ;
struct TYPE_11__ {scalar_t__ guid; scalar_t__ base_lid; TYPE_1__* node; } ;
struct TYPE_10__ {int nodedesc; } ;


 int DIFF_FLAG_LID ;
 int DIFF_FLAG_NODE_DESCRIPTION ;
 int DIFF_FLAG_PORT_CONNECTION ;
 int DIFF_FLAG_PORT_STATE ;
 int IB_PORT_STATE_F ;
 int IB_SMP_DATA_SIZE ;
 int mad_get_field (int ,int ,int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int print_node_header (TYPE_4__*,int*,int *) ;
 int print_port (TYPE_4__*,TYPE_3__*,int ) ;

void diff_node_ports(ibnd_node_t * fabric1_node, ibnd_node_t * fabric2_node,
         int *head_print, struct iter_diff_data *data)
{
 int i = 0;

 for (i = 1; i <= fabric1_node->numports; i++) {
  ibnd_port_t *fabric1_port, *fabric2_port;
  int output_diff = 0;

  fabric1_port = fabric1_node->ports[i];
  fabric2_port = fabric2_node->ports[i];

  if (!fabric1_port && !fabric2_port)
   continue;

  if (data->diff_flags & DIFF_FLAG_PORT_CONNECTION) {
   if ((fabric1_port && !fabric2_port)
       || (!fabric1_port && fabric2_port)
       || (fabric1_port->remoteport
    && !fabric2_port->remoteport)
       || (!fabric1_port->remoteport
    && fabric2_port->remoteport)
       || (fabric1_port->remoteport
    && fabric2_port->remoteport
    && fabric1_port->remoteport->guid !=
    fabric2_port->remoteport->guid))
    output_diff++;
  }




  if (data->diff_flags & DIFF_FLAG_PORT_STATE
      && fabric1_port
      && fabric2_port) {
   int state1, state2;

   state1 = mad_get_field(fabric1_port->info, 0,
            IB_PORT_STATE_F);
   state2 = mad_get_field(fabric2_port->info, 0,
            IB_PORT_STATE_F);

   if (state1 != state2)
    output_diff++;
  }

  if (data->diff_flags & DIFF_FLAG_PORT_CONNECTION
      && data->diff_flags & DIFF_FLAG_LID
      && fabric1_port && fabric2_port
      && fabric1_port->remoteport && fabric2_port->remoteport
      && fabric1_port->remoteport->base_lid != fabric2_port->remoteport->base_lid)
   output_diff++;

  if (data->diff_flags & DIFF_FLAG_PORT_CONNECTION
      && data->diff_flags & DIFF_FLAG_NODE_DESCRIPTION
      && fabric1_port && fabric2_port
      && fabric1_port->remoteport && fabric2_port->remoteport
      && memcmp(fabric1_port->remoteport->node->nodedesc,
         fabric2_port->remoteport->node->nodedesc,
         IB_SMP_DATA_SIZE))
   output_diff++;

  if (output_diff && fabric1_port) {
   print_node_header(fabric1_node,
         head_print,
         ((void*)0));
   print_port(fabric1_node,
       fabric1_port,
       data->fabric1_prefix);
  }

  if (output_diff && fabric2_port) {
   print_node_header(fabric1_node,
         head_print,
         ((void*)0));
   print_port(fabric2_node,
       fabric2_port,
       data->fabric2_prefix);
  }
 }
}
