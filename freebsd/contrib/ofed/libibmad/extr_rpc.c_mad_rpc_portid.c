
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmad_port {int port_id; } ;



int mad_rpc_portid(struct ibmad_port *srcport)
{
 return srcport->port_id;
}
