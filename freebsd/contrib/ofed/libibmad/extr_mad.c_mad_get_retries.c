
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmad_port {int retries; } ;


 int madrpc_retries ;

int mad_get_retries(const struct ibmad_port *srcport)
{
 return (srcport->retries ? srcport->retries : madrpc_retries);
}
