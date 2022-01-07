
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ibmad_port {int* class_agents; } ;


 int mad_register_port_client (int ,int,int ) ;
 int mad_rpc_portid (struct ibmad_port*) ;

int mad_register_client_via(int mgmt, uint8_t rmpp_version,
       struct ibmad_port *srcport)
{
 int agent;

 if (!srcport)
  return -1;

 agent = mad_register_port_client(mad_rpc_portid(srcport), mgmt,
      rmpp_version);
 if (agent < 0)
  return agent;

 srcport->class_agents[mgmt] = agent;
 return 0;
}
