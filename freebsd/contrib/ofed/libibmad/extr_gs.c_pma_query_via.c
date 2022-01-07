
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void uint8_t ;
struct ibmad_port {int dummy; } ;
struct TYPE_6__ {unsigned int id; scalar_t__ mod; } ;
struct TYPE_7__ {int mgtclass; unsigned int timeout; int error; int dataoffs; int datasz; TYPE_1__ attr; int method; int member_0; } ;
typedef TYPE_2__ ib_rpc_v1_t ;
typedef int ib_rpc_t ;
struct TYPE_8__ {int lid; int qp; scalar_t__ qkey; } ;
typedef TYPE_3__ ib_portid_t ;


 int DEBUG (char*,int,int) ;
 int IBWARN (char*) ;
 scalar_t__ IB_DEFAULT_QP1_QKEY ;
 int IB_MAD_METHOD_GET ;
 int IB_MAD_RPC_VERSION1 ;
 int IB_PC_DATA_OFFS ;
 int IB_PC_DATA_SZ ;
 int IB_PC_PORT_SELECT_F ;
 int IB_PERFORMANCE_CLASS ;
 int errno ;
 void* mad_rpc (struct ibmad_port const*,int *,TYPE_3__*,void*,void*) ;
 int mad_set_field (void*,int ,int ,int) ;

uint8_t *pma_query_via(void *rcvbuf, ib_portid_t * dest, int port,
         unsigned timeout, unsigned id,
         const struct ibmad_port * srcport)
{
 ib_rpc_v1_t rpc = { 0 };
 ib_rpc_t *rpcold = (ib_rpc_t *)(void *)&rpc;
 int lid = dest->lid;
 void *p_ret;

 DEBUG("lid %u port %d", lid, port);

 if (lid == -1) {
  IBWARN("only lid routed is supported");
  return ((void*)0);
 }

 rpc.mgtclass = IB_PERFORMANCE_CLASS | IB_MAD_RPC_VERSION1;
 rpc.method = IB_MAD_METHOD_GET;
 rpc.attr.id = id;


 mad_set_field(rcvbuf, 0, IB_PC_PORT_SELECT_F, port);
 rpc.attr.mod = 0;
 rpc.timeout = timeout;
 rpc.datasz = IB_PC_DATA_SZ;
 rpc.dataoffs = IB_PC_DATA_OFFS;

 if (!dest->qp)
  dest->qp = 1;
 if (!dest->qkey)
  dest->qkey = IB_DEFAULT_QP1_QKEY;

 p_ret = mad_rpc(srcport, rpcold, dest, rcvbuf, rcvbuf);
 errno = rpc.error;
 return p_ret;
}
