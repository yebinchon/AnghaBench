
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct sa_handle {int dummy; } ;
struct query_params {int proxy_join; int join_state; int scope; int hop_limit; int flow_label; int sl; int pkey; int tclass; int pkt_life; int rate; int mtu; int qkey; int mlid; int gid; int mgid; } ;
struct query_cmd {int dummy; } ;
typedef int mr ;
typedef int ib_net64_t ;
struct TYPE_4__ {int mlid; int qkey; int tclass; int pkey; int scope_state; int proxy_join; int sl_flow_hop; int pkt_life; int rate; int mtu; int port_gid; int mgid; } ;
typedef TYPE_1__ ib_member_rec_t ;


 int CHECK_AND_SET_GID (int ,int ,int ,int ) ;
 int CHECK_AND_SET_VAL (int ,int,int,int,int ,int ) ;
 int CHECK_AND_SET_VAL_AND_SEL (int ,int ,int ,int ,int ) ;
 int FLOW ;
 int HOP ;
 int IB_SA_ATTR_MCRECORD ;
 int JOIN_STATE ;
 int LIFE ;
 int MCR ;
 int MGID ;
 int MLID ;
 int MTU ;
 int PKEY ;
 int PORT_GID ;
 int PROXY ;
 int QKEY ;
 int RATE ;
 int SCOPE ;
 int SL ;
 int TCLASS ;
 int _SEL ;
 int cl_ntoh32 (int) ;
 int dump_one_mcmember_record ;
 int get_and_dump_any_records (struct sa_handle*,int ,int ,int ,TYPE_1__*,int,int ,struct query_params*) ;
 int ib_member_set_sl_flow_hop (int,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int query_mcmember_records(const struct query_cmd *q,
      struct sa_handle * h, struct query_params *p,
      int argc, char *argv[])
{
 ib_member_rec_t mr;
 ib_net64_t comp_mask = 0;
 uint32_t flow = 0;
 uint8_t sl = 0, hop = 0, scope = 0;

 memset(&mr, 0, sizeof(mr));
 CHECK_AND_SET_GID(p->mgid, mr.mgid, MCR, MGID);
 CHECK_AND_SET_GID(p->gid, mr.port_gid, MCR, PORT_GID);
 CHECK_AND_SET_VAL(p->mlid, 16, 0, mr.mlid, MCR, MLID);
 CHECK_AND_SET_VAL(p->qkey, 32, 0, mr.qkey, MCR, QKEY);
 CHECK_AND_SET_VAL_AND_SEL(p->mtu, mr.mtu, MCR, MTU, _SEL);
 CHECK_AND_SET_VAL_AND_SEL(p->rate, mr.rate, MCR, RATE, _SEL);
 CHECK_AND_SET_VAL_AND_SEL(p->pkt_life, mr.pkt_life, MCR, LIFE, _SEL);
 CHECK_AND_SET_VAL(p->tclass, 8, 0, mr.tclass, MCR, TCLASS);
 CHECK_AND_SET_VAL(p->pkey, 16, 0, mr.pkey, MCR, PKEY);
 CHECK_AND_SET_VAL(p->sl, 8, -1, sl, MCR, SL);
 CHECK_AND_SET_VAL(p->flow_label, 32, 0, flow, MCR, FLOW);
 CHECK_AND_SET_VAL(p->hop_limit, 8, 0, hop, MCR, HOP);

 mr.sl_flow_hop = ib_member_set_sl_flow_hop(sl, cl_ntoh32(flow), hop);
 CHECK_AND_SET_VAL(p->scope, 8, 0, scope, MCR, SCOPE);
 CHECK_AND_SET_VAL(p->join_state, 8, 0, mr.scope_state, MCR, JOIN_STATE);
 mr.scope_state |= scope << 4;
 CHECK_AND_SET_VAL(p->proxy_join, 8, -1, mr.proxy_join, MCR, PROXY);

 return get_and_dump_any_records(h, IB_SA_ATTR_MCRECORD, 0, comp_mask,
     &mr, sizeof(mr), dump_one_mcmember_record, p);
}
