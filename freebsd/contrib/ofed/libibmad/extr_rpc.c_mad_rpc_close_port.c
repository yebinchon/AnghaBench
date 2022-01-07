
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmad_port {int port_id; } ;


 int free (struct ibmad_port*) ;
 int umad_close_port (int ) ;

void mad_rpc_close_port(struct ibmad_port *port)
{
 umad_close_port(port->port_id);
 free(port);
}
