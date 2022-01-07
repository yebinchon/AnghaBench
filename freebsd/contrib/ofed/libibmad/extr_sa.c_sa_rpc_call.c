
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct ibmad_port {int dummy; } ;
struct TYPE_11__ {int recsz; int trid; int mask; int mod; int attrid; int method; } ;
typedef TYPE_2__ ib_sa_call_t ;
struct TYPE_10__ {int mod; int id; } ;
struct TYPE_12__ {unsigned int timeout; int recsz; int trid; int dataoffs; int datasz; int mask; TYPE_1__ attr; int method; int mgtclass; int member_0; } ;
typedef TYPE_3__ ib_rpc_t ;
struct TYPE_13__ {scalar_t__ lid; int qp; scalar_t__ qkey; } ;
typedef TYPE_4__ ib_portid_t ;


 int DEBUG (char*,int ,int ,int ) ;
 int IBWARN (char*) ;
 scalar_t__ IB_DEFAULT_QP1_QKEY ;
 int IB_SA_CLASS ;
 int IB_SA_DATA_OFFS ;
 int IB_SA_DATA_SIZE ;
 int * mad_rpc_rmpp (struct ibmad_port const*,TYPE_3__*,TYPE_4__*,int ,void*) ;
 int portid2str (TYPE_4__*) ;

uint8_t *sa_rpc_call(const struct ibmad_port *ibmad_port, void *rcvbuf,
       ib_portid_t * portid, ib_sa_call_t * sa, unsigned timeout)
{
 ib_rpc_t rpc = { 0 };
 uint8_t *p;

 DEBUG("attr 0x%x mod 0x%x route %s", sa->attrid, sa->mod,
       portid2str(portid));

 if (portid->lid <= 0) {
  IBWARN("only lid routes are supported");
  return ((void*)0);
 }

 rpc.mgtclass = IB_SA_CLASS;
 rpc.method = sa->method;
 rpc.attr.id = sa->attrid;
 rpc.attr.mod = sa->mod;
 rpc.mask = sa->mask;
 rpc.timeout = timeout;
 rpc.datasz = IB_SA_DATA_SIZE;
 rpc.dataoffs = IB_SA_DATA_OFFS;
 rpc.trid = sa->trid;

 portid->qp = 1;
 if (!portid->qkey)
  portid->qkey = IB_DEFAULT_QP1_QKEY;

 p = mad_rpc_rmpp(ibmad_port, &rpc, portid, 0 , rcvbuf);

 sa->recsz = rpc.recsz;

 return p;
}
