
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct ibmad_port {int smp_mkey; } ;
struct TYPE_9__ {unsigned int id; unsigned int mod; } ;
struct TYPE_11__ {unsigned int timeout; int rstatus; int mgtclass; int mkey; int dataoffs; int datasz; TYPE_1__ attr; int method; int member_0; } ;
typedef TYPE_3__ ib_rpc_t ;
struct TYPE_10__ {int drslid; int drdlid; } ;
struct TYPE_12__ {scalar_t__ lid; scalar_t__ qp; scalar_t__ sl; TYPE_2__ drpath; } ;
typedef TYPE_4__ ib_portid_t ;


 int DEBUG (char*,unsigned int,unsigned int,int ) ;
 int IB_MAD_METHOD_GET ;
 int IB_SMI_CLASS ;
 int IB_SMI_DIRECT_CLASS ;
 int IB_SMP_DATA_OFFS ;
 int IB_SMP_DATA_SIZE ;
 int * mad_rpc (struct ibmad_port const*,TYPE_3__*,TYPE_4__*,void*,void*) ;
 int portid2str (TYPE_4__*) ;

uint8_t *smp_query_status_via(void *rcvbuf, ib_portid_t * portid,
         unsigned attrid, unsigned mod, unsigned timeout,
         int *rstatus, const struct ibmad_port * srcport)
{
 ib_rpc_t rpc = { 0 };
 uint8_t *res;

 DEBUG("attr 0x%x mod 0x%x route %s", attrid, mod, portid2str(portid));
 rpc.method = IB_MAD_METHOD_GET;
 rpc.attr.id = attrid;
 rpc.attr.mod = mod;
 rpc.timeout = timeout;
 rpc.datasz = IB_SMP_DATA_SIZE;
 rpc.dataoffs = IB_SMP_DATA_OFFS;
 rpc.mkey = srcport->smp_mkey;

 if ((portid->lid <= 0) ||
     (portid->drpath.drslid == 0xffff) ||
     (portid->drpath.drdlid == 0xffff))
  rpc.mgtclass = IB_SMI_DIRECT_CLASS;
 else
  rpc.mgtclass = IB_SMI_CLASS;

 portid->sl = 0;
 portid->qp = 0;

 res = mad_rpc(srcport, &rpc, portid, rcvbuf, rcvbuf);
 if (rstatus)
  *rstatus = rpc.rstatus;
 return res;
}
