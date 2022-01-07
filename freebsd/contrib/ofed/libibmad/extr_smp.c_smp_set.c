
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ib_portid_t ;


 int ibmp ;
 int * smp_set_via (void*,int *,unsigned int,unsigned int,unsigned int,int ) ;

uint8_t *smp_set(void *data, ib_portid_t * portid, unsigned attrid,
   unsigned mod, unsigned timeout)
{
 return smp_set_via(data, portid, attrid, mod, timeout, ibmp);
}
