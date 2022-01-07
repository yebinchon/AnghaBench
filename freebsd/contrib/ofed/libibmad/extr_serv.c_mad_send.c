
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_rpc_t ;
typedef int ib_rmpp_hdr_t ;
typedef int ib_portid_t ;


 int ibmp ;
 int mad_send_via (int *,int *,int *,void*,int ) ;

int mad_send(ib_rpc_t * rpc, ib_portid_t * dport, ib_rmpp_hdr_t * rmpp,
      void *data)
{
 return mad_send_via(rpc, dport, rmpp, data, ibmp);
}
