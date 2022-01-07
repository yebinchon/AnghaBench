
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmad_port {int retries; } ;



void mad_rpc_set_retries(struct ibmad_port *port, int retries)
{
 port->retries = retries;
}
