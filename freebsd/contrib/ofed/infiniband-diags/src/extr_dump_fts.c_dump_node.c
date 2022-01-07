
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmad_port {int dummy; } ;
typedef int ibnd_node_t ;
typedef int ibnd_fabric_t ;


 int dump_multicast_tables (int *,int ,int ,struct ibmad_port*) ;
 int dump_unicast_tables (int *,int ,int ,struct ibmad_port*,int *) ;
 int endlid ;
 scalar_t__ multicast ;
 int startlid ;

void dump_node(ibnd_node_t *node, struct ibmad_port *mad_port,
  ibnd_fabric_t *fabric)
{
 if (multicast)
  dump_multicast_tables(node, startlid, endlid, mad_port);
 else
  dump_unicast_tables(node, startlid, endlid,
      mad_port, fabric);
}
