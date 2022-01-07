
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_portid_t ;


 int IB_GSI_PORT_SL_RCV_FECN ;
 int common_func (int *,int,int,int,int,char*,int ,int ) ;
 int mad_dump_perfcounters_sl_rcv_fecn ;
 scalar_t__ reset ;
 scalar_t__ reset_only ;

__attribute__((used)) static void slrcvfecn_query(ib_portid_t * portid, int port, int mask)
{
 common_func(portid, port, mask, !reset_only, (reset_only || reset),
      "PortSLRcvFECN", IB_GSI_PORT_SL_RCV_FECN,
      mad_dump_perfcounters_sl_rcv_fecn);
}
