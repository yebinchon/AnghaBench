
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int rpc ;
struct TYPE_5__ {scalar_t__ mod; int id; } ;
struct TYPE_6__ {int method; int dataoffs; int datasz; int mask; TYPE_1__ attr; int mgtclass; } ;
typedef TYPE_2__ ib_rpc_t ;
typedef int ib_portid_t ;


 int IB_SA_ATTR_MCRECORD ;
 int IB_SA_CLASS ;
 int IB_SA_DATA_OFFS ;
 int IB_SA_DATA_SIZE ;
 int mad_build_pkt (void*,TYPE_2__*,int *,int *,int *) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void build_mcm_rec_umad(void *umad, ib_portid_t * dport, int method,
          uint64_t comp_mask, uint8_t * data)
{
 ib_rpc_t rpc;

 memset(&rpc, 0, sizeof(rpc));
 rpc.mgtclass = IB_SA_CLASS;
 rpc.method = method;
 rpc.attr.id = IB_SA_ATTR_MCRECORD;
 rpc.attr.mod = 0;
 rpc.mask = comp_mask;
 rpc.datasz = IB_SA_DATA_SIZE;
 rpc.dataoffs = IB_SA_DATA_OFFS;

 mad_build_pkt(umad, &rpc, dport, ((void*)0), data);
}
