
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmad_port {int timeout; } ;


 int madrpc_timeout ;

int mad_get_timeout(const struct ibmad_port *srcport, int override_ms)
{
 return (override_ms ? override_ms :
  srcport->timeout ? srcport->timeout : madrpc_timeout);
}
