
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ib_portid_t ;


 int ibmp ;
 int * smp_query_via (void*,int *,unsigned int,unsigned int,unsigned int,int ) ;

uint8_t *smp_query(void *rcvbuf, ib_portid_t * portid, unsigned attrid,
     unsigned mod, unsigned timeout)
{
 return smp_query_via(rcvbuf, portid, attrid, mod, timeout, ibmp);
}
