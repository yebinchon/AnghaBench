
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_14__ {int type; int numports; TYPE_1__** ports; int smalid; int nodedesc; int guid; scalar_t__ smaenhsp0; } ;
typedef TYPE_2__ ibnd_node_t ;
struct TYPE_15__ {int member_0; } ;
typedef TYPE_3__ ib_portid_t ;
struct TYPE_16__ {int nodes_checked; scalar_t__ ports_checked; } ;
struct TYPE_13__ {int base_lid; } ;





 int IB_PM_ALL_PORT_SELECT ;
 int PRINT_CA ;
 int PRINT_ROUTER ;
 int PRINT_SWITCH ;
 int clear_port (TYPE_3__*,int,char*,int) ;
 scalar_t__ data_counters_only ;
 int free (char*) ;
 int ib_portid_set (TYPE_3__*,int ,int ,int ) ;
 int node_name_map ;
 int node_type_to_print ;
 int print_data_cnts (TYPE_3__*,int,char*,TYPE_2__*,int,int*) ;
 int print_errors (TYPE_3__*,int,char*,TYPE_2__*,int,int*) ;
 scalar_t__ query_cap_mask (TYPE_3__*,char*,int,int*) ;
 char* remap_node_name (int ,int ,int ) ;
 TYPE_4__ summary ;

void print_node(ibnd_node_t * node, void *user_data)
{
 int header_printed = 0;
 int p = 0;
 int startport = 1;
 int type = 0;
 int all_port_sup = 0;
 ib_portid_t portid = { 0 };
 uint16_t cap_mask = 0;
 char *node_name = ((void*)0);

 switch (node->type) {
 case 128:
  type = PRINT_SWITCH;
  break;
 case 130:
  type = PRINT_CA;
  break;
 case 129:
  type = PRINT_ROUTER;
  break;
 }

 if ((type & node_type_to_print) == 0)
  return;

 if (node->type == 128 && node->smaenhsp0)
  startport = 0;

 node_name = remap_node_name(node_name_map, node->guid, node->nodedesc);

 if (node->type == 128) {
  ib_portid_set(&portid, node->smalid, 0, 0);
  p = 0;
 } else {
  for (p = 1; p <= node->numports; p++) {
   if (node->ports[p]) {
    ib_portid_set(&portid,
           node->ports[p]->base_lid,
           0, 0);
    break;
   }
  }
 }

 if ((query_cap_mask(&portid, node_name, p, &cap_mask) == 0) &&
     (cap_mask & IB_PM_ALL_PORT_SELECT))
  all_port_sup = 1;

 if (data_counters_only) {
  for (p = startport; p <= node->numports; p++) {
   if (node->ports[p]) {
    if (node->type == 128)
     ib_portid_set(&portid, node->smalid, 0, 0);
    else
     ib_portid_set(&portid, node->ports[p]->base_lid,
            0, 0);

    print_data_cnts(&portid, cap_mask, node_name, node, p,
      &header_printed);
    summary.ports_checked++;
    if (!all_port_sup)
     clear_port(&portid, cap_mask, node_name, p);
   }
  }
 } else {
  if (all_port_sup)
   if (!print_errors(&portid, cap_mask, node_name, node,
       0xFF, &header_printed)) {
    summary.ports_checked += node->numports;
    goto clear;
   }

  for (p = startport; p <= node->numports; p++) {
   if (node->ports[p]) {
    if (node->type == 128)
     ib_portid_set(&portid, node->smalid, 0, 0);
    else
     ib_portid_set(&portid, node->ports[p]->base_lid,
            0, 0);

    print_errors(&portid, cap_mask, node_name, node, p,
          &header_printed);
    summary.ports_checked++;
    if (!all_port_sup)
     clear_port(&portid, cap_mask, node_name, p);
   }
  }
 }

clear:
 summary.nodes_checked++;
 if (all_port_sup)
  clear_port(&portid, cap_mask, node_name, 0xFF);

 free(node_name);
}
