
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct ibmad_port {int dummy; } ;
typedef int ib_rpc_t ;
struct TYPE_7__ {unsigned int id; unsigned int mod; } ;
struct TYPE_8__ {unsigned int timeout; int rstatus; int cckey; int mgtclass; int dataoffs; int datasz; TYPE_1__ attr; int method; int member_0; } ;
typedef TYPE_2__ ib_rpc_cc_t ;
struct TYPE_9__ {int qp; scalar_t__ qkey; } ;
typedef TYPE_3__ ib_portid_t ;


 int DEBUG (char*,unsigned int,unsigned int,int ) ;
 unsigned int IB_CC_ATTR_CONGESTION_LOG ;
 int IB_CC_CLASS ;
 int IB_CC_DATA_OFFS ;
 int IB_CC_DATA_SZ ;
 int IB_CC_LOG_DATA_OFFS ;
 int IB_CC_LOG_DATA_SZ ;
 scalar_t__ IB_DEFAULT_QP1_QKEY ;
 int IB_MAD_METHOD_GET ;
 void* mad_rpc (struct ibmad_port const*,int *,TYPE_3__*,void*,void*) ;
 int portid2str (TYPE_3__*) ;

void *cc_query_status_via(void *rcvbuf, ib_portid_t * portid,
     unsigned attrid, unsigned mod, unsigned timeout,
     int *rstatus, const struct ibmad_port * srcport,
     uint64_t cckey)
{
 ib_rpc_cc_t rpc = { 0 };
 void *res;

 DEBUG("attr 0x%x mod 0x%x route %s", attrid, mod, portid2str(portid));
 rpc.method = IB_MAD_METHOD_GET;
 rpc.attr.id = attrid;
 rpc.attr.mod = mod;
 rpc.timeout = timeout;
 if (attrid == IB_CC_ATTR_CONGESTION_LOG) {
  rpc.datasz = IB_CC_LOG_DATA_SZ;
  rpc.dataoffs = IB_CC_LOG_DATA_OFFS;
 }
 else {
  rpc.datasz = IB_CC_DATA_SZ;
  rpc.dataoffs = IB_CC_DATA_OFFS;
 }
 rpc.mgtclass = IB_CC_CLASS;
 rpc.cckey = cckey;

 portid->qp = 1;
 if (!portid->qkey)
  portid->qkey = IB_DEFAULT_QP1_QKEY;

 res = mad_rpc(srcport, (ib_rpc_t *)&rpc, portid, rcvbuf, rcvbuf);
 if (rstatus)
  *rstatus = rpc.rstatus;

 return res;
}
