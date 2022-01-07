
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ib_sa_call_t ;
typedef int ib_portid_t ;


 int ibmp ;
 int * sa_rpc_call (int ,void*,int *,int *,unsigned int) ;

uint8_t *sa_call(void *rcvbuf, ib_portid_t * portid, ib_sa_call_t * sa,
   unsigned timeout)
{
 return sa_rpc_call(ibmp, rcvbuf, portid, sa, timeout);
}
