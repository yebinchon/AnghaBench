
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int ibnd_node_t ;
struct TYPE_7__ {size_t lid; int sl; } ;
typedef TYPE_1__ ib_portid_t ;
struct TYPE_8__ {int pma_query_failures; } ;


 int IBWARN (char*,char*,int ,int) ;
 int IB_GSI_PORT_COUNTERS ;
 int IB_GSI_PORT_COUNTERS_EXT ;
 int IB_PC_XMT_WAIT_F ;
 int IB_PM_EXT_WIDTH_NOIETF_SUP ;
 int IB_PM_EXT_WIDTH_SUPPORTED ;
 int IB_PM_PC_XMIT_WAIT_SUP ;
 int ibd_timeout ;
 int ibmad_port ;
 int * lid2sl_table ;
 int mad_encode_field (int *,int ,int *) ;
 int memset (int *,int ,int) ;
 int pma_query_via (int *,TYPE_1__*,int,int ,int ,int ) ;
 int portid2str (TYPE_1__*) ;
 int print_results (TYPE_1__*,char*,int *,int *,int,int*,int *,int) ;
 TYPE_2__ summary ;

__attribute__((used)) static int print_errors(ib_portid_t * portid, uint16_t cap_mask,
   char *node_name, ibnd_node_t * node, int portnum,
   int *header_printed)
{
 uint8_t pc[1024];
 uint8_t pce[1024];
 uint8_t *pc_ext = ((void*)0);

 memset(pc, 0, 1024);
 memset(pce, 0, 1024);

 portid->sl = lid2sl_table[portid->lid];

 if (!pma_query_via(pc, portid, portnum, ibd_timeout,
      IB_GSI_PORT_COUNTERS, ibmad_port)) {
  IBWARN("IB_GSI_PORT_COUNTERS query failed on %s, %s port %d",
         node_name, portid2str(portid), portnum);
  summary.pma_query_failures++;
  return (0);
 }

 if (cap_mask & (IB_PM_EXT_WIDTH_SUPPORTED | IB_PM_EXT_WIDTH_NOIETF_SUP)) {
  if (!pma_query_via(pce, portid, portnum, ibd_timeout,
      IB_GSI_PORT_COUNTERS_EXT, ibmad_port)) {
   IBWARN("IB_GSI_PORT_COUNTERS_EXT query failed on %s, %s port %d",
          node_name, portid2str(portid), portnum);
   summary.pma_query_failures++;
   return (0);
  }
  pc_ext = pce;
 }

 if (!(cap_mask & IB_PM_PC_XMIT_WAIT_SUP)) {

  uint32_t foo = 0;
  mad_encode_field(pc, IB_PC_XMT_WAIT_F, &foo);
 }
 return (print_results(portid, node_name, node, pc, portnum,
         header_printed, pc_ext, cap_mask));
}
