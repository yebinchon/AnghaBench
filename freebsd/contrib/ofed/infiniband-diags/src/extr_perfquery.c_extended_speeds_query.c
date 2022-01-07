
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
typedef int ib_portid_t ;


 int IBEXIT (char*) ;
 int IB_GSI_PORT_EXT_SPEEDS_COUNTERS ;
 int common_func (int *,int,int,int,int ,char*,int ,int ) ;
 int ext_speeds_reset_via (int ,int *,int,int,int ,int ) ;
 int ibd_timeout ;
 scalar_t__ is_rsfec_mode_active (int *,int,int ) ;
 int mad_dump_port_ext_speeds_counters ;
 int mad_dump_port_ext_speeds_counters_rsfec_active ;
 int pc ;
 scalar_t__ reset ;
 scalar_t__ reset_only ;
 int srcport ;

__attribute__((used)) static void extended_speeds_query(ib_portid_t * portid, int port,
      uint64_t ext_mask, uint16_t cap_mask)
{
 int mask = ext_mask;

 if (!reset_only) {
  if (is_rsfec_mode_active(portid, port, cap_mask))
   common_func(portid, port, mask, 1, 0,
        "PortExtendedSpeedsCounters with RS-FEC Active",
        IB_GSI_PORT_EXT_SPEEDS_COUNTERS,
        mad_dump_port_ext_speeds_counters_rsfec_active);
  else
   common_func(portid, port, mask, 1, 0,
       "PortExtendedSpeedsCounters",
       IB_GSI_PORT_EXT_SPEEDS_COUNTERS,
       mad_dump_port_ext_speeds_counters);
 }

 if ((reset_only || reset) &&
     !ext_speeds_reset_via(pc, portid, port, ext_mask, ibd_timeout, srcport))
  IBEXIT("cannot reset PortExtendedSpeedsCounters");
}
