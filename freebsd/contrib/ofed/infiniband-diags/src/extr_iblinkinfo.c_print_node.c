
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int info; } ;
typedef TYPE_1__ ibnd_port_t ;
struct TYPE_8__ {int numports; TYPE_1__** ports; } ;
typedef TYPE_2__ ibnd_node_t ;


 scalar_t__ IB_LINK_DOWN ;
 int IB_PORT_STATE_F ;
 int down_links_only ;
 scalar_t__ mad_get_field (int ,int ,int ) ;
 int print_node_header (TYPE_2__*,int*,char*) ;
 int print_port (TYPE_2__*,TYPE_1__*,char*) ;

void print_node(ibnd_node_t * node, void *user_data)
{
 int i = 0;
 int head_print = 0;
 char *out_prefix = (char *)user_data;

 for (i = 1; i <= node->numports; i++) {
  ibnd_port_t *port = node->ports[i];
  if (!port)
   continue;
  if (!down_links_only ||
      mad_get_field(port->info, 0,
      IB_PORT_STATE_F) == IB_LINK_DOWN) {
   print_node_header(node, &head_print, out_prefix);
   print_port(node, port, out_prefix);
  }
 }
}
