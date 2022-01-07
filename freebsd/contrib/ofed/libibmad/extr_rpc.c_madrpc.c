
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_rpc_t ;
typedef int ib_portid_t ;


 int ibmp ;
 void* mad_rpc (int ,int *,int *,void*,void*) ;

void *madrpc(ib_rpc_t * rpc, ib_portid_t * dport, void *payload, void *rcvdata)
{
 return mad_rpc(ibmp, rpc, dport, payload, rcvdata);
}
