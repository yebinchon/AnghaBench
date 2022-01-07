
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmad_port {int* class_agents; } ;


 int MAX_CLASS ;

int mad_rpc_class_agent(struct ibmad_port *port, int class)
{
 if (class < 1 || class >= MAX_CLASS)
  return -1;
 return port->class_agents[class];
}
