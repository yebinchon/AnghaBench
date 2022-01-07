
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int ib_portid_t ;


 int IB_GSI_PORT_COUNTERS ;
 int IB_GSI_PORT_RCV_ERROR_DETAILS ;
 int IB_GSI_PORT_XMIT_DISCARD_DETAILS ;
 int IB_PM_EXT_WIDTH_NOIETF_SUP ;
 int IB_PM_EXT_WIDTH_SUPPORTED ;
 int IB_PM_PC_XMIT_WAIT_SUP ;
 scalar_t__ clear_counts ;
 scalar_t__ clear_errors ;
 scalar_t__ details ;
 int fprintf (int ,char*,char*,...) ;
 int ibd_timeout ;
 int ibmad_port ;
 int memset (int *,int ,int) ;
 int performance_reset_via (int *,int *,int,int,int ,int ,int ) ;
 char* portid2str (int *) ;
 int reset_pc_ext (int *,int *,int,int,int ,int ) ;
 int stderr ;

__attribute__((used)) static void clear_port(ib_portid_t * portid, uint16_t cap_mask,
         char *node_name, int port)
{
 uint8_t pc[1024] = { 0 };



 uint32_t mask = 0;

 if (clear_errors) {
  mask |= 0xFFF;
  if (cap_mask & IB_PM_PC_XMIT_WAIT_SUP)
   mask |= 0x10000;
 }
 if (clear_counts)
  mask |= 0xF000;

 if (mask)
  if (!performance_reset_via(pc, portid, port, mask, ibd_timeout,
        IB_GSI_PORT_COUNTERS, ibmad_port))
   fprintf(stderr, "Failed to reset errors %s port %d\n", node_name,
    port);

 if (clear_errors && details) {
  memset(pc, 0, 1024);
  performance_reset_via(pc, portid, port, 0xf, ibd_timeout,
          IB_GSI_PORT_XMIT_DISCARD_DETAILS,
          ibmad_port);
  memset(pc, 0, 1024);
  performance_reset_via(pc, portid, port, 0x3f, ibd_timeout,
          IB_GSI_PORT_RCV_ERROR_DETAILS,
          ibmad_port);
 }

 if (clear_counts &&
     (cap_mask &
      (IB_PM_EXT_WIDTH_SUPPORTED | IB_PM_EXT_WIDTH_NOIETF_SUP))) {
  if (cap_mask & IB_PM_EXT_WIDTH_SUPPORTED)
   mask = 0xFF;
  else
   mask = 0x0F;

  if (!reset_pc_ext(pc, portid, port, mask, ibd_timeout,
      ibmad_port))
   fprintf(stderr, "Failed to reset extended data counters %s, "
    "%s port %d\n", node_name, portid2str(portid),
    port);
 }
}
