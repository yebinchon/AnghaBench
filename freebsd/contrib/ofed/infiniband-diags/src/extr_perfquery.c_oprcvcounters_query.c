
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_portid_t ;


 int IB_GSI_PORT_PORT_OP_RCV_COUNTERS ;
 int common_func (int *,int,int,int,int,char*,int ,int ) ;
 int mad_dump_perfcounters_port_op_rcv_counters ;
 scalar_t__ reset ;
 scalar_t__ reset_only ;

__attribute__((used)) static void oprcvcounters_query(ib_portid_t * portid, int port, int mask)
{
 common_func(portid, port, mask, !reset_only, (reset_only || reset),
      "PortOpRcvCounters", IB_GSI_PORT_PORT_OP_RCV_COUNTERS,
      mad_dump_perfcounters_port_op_rcv_counters);
}
