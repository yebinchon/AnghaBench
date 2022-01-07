
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_rpc_t ;
typedef int ib_rmpp_hdr_t ;
typedef int ib_portid_t ;


 int ibmp ;
 void* mad_rpc_rmpp (int ,int *,int *,int *,void*) ;

void *madrpc_rmpp(ib_rpc_t * rpc, ib_portid_t * dport, ib_rmpp_hdr_t * rmpp,
    void *data)
{
 return mad_rpc_rmpp(ibmp, rpc, dport, rmpp, data);
}
