
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmad_port {int timeout; } ;



void mad_rpc_set_timeout(struct ibmad_port *port, int timeout)
{
 port->timeout = timeout;
}
