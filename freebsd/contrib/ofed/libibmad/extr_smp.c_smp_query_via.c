
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ibmad_port {int dummy; } ;
typedef int ib_portid_t ;


 int * smp_query_status_via (void*,int *,unsigned int,unsigned int,unsigned int,int *,struct ibmad_port const*) ;

uint8_t *smp_query_via(void *rcvbuf, ib_portid_t * portid, unsigned attrid,
         unsigned mod, unsigned timeout,
         const struct ibmad_port * srcport)
{
 return smp_query_status_via(rcvbuf, portid, attrid, mod, timeout, ((void*)0),
        srcport);
}
