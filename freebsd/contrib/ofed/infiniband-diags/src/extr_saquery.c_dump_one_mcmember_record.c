
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct query_params {int dummy; } ;
typedef int mgid ;
struct TYPE_5__ {int raw; } ;
struct TYPE_4__ {int raw; } ;
struct TYPE_6__ {int mtu; int tclass; int rate; int pkt_life; int proxy_join; int pkey; int mlid; int qkey; TYPE_2__ port_gid; TYPE_1__ mgid; int scope_state; int sl_flow_hop; } ;
typedef TYPE_3__ ib_member_rec_t ;
typedef int gid ;


 int AF_INET6 ;
 int INET6_ADDRSTRLEN ;
 int cl_ntoh16 (int ) ;
 int cl_ntoh32 (int ) ;
 int ib_member_get_scope_state (int ,int*,int*) ;
 int ib_member_get_sl_flow_hop (int ,int*,int*,int*) ;
 char* inet_ntop (int ,int ,char*,int) ;
 int printf (char*,char*,char*,int,int,int,int,int,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static void dump_one_mcmember_record(void *data, struct query_params *p)
{
 char mgid[INET6_ADDRSTRLEN], gid[INET6_ADDRSTRLEN];
 ib_member_rec_t *mr = data;
 uint32_t flow;
 uint8_t sl, hop, scope, join;
 ib_member_get_sl_flow_hop(mr->sl_flow_hop, &sl, &flow, &hop);
 ib_member_get_scope_state(mr->scope_state, &scope, &join);
 printf("MCMember Record dump:\n"
        "\t\tMGID....................%s\n"
        "\t\tPortGid.................%s\n"
        "\t\tqkey....................0x%x\n"
        "\t\tmlid....................0x%x\n"
        "\t\tmtu.....................0x%x\n"
        "\t\tTClass..................0x%x\n"
        "\t\tpkey....................0x%x\n"
        "\t\trate....................0x%x\n"
        "\t\tpkt_life................0x%x\n"
        "\t\tSL......................0x%x\n"
        "\t\tFlowLabel...............0x%x\n"
        "\t\tHopLimit................0x%x\n"
        "\t\tScope...................0x%x\n"
        "\t\tJoinState...............0x%x\n"
        "\t\tProxyJoin...............0x%x\n",
        inet_ntop(AF_INET6, mr->mgid.raw, mgid, sizeof(mgid)),
        inet_ntop(AF_INET6, mr->port_gid.raw, gid, sizeof(gid)),
        cl_ntoh32(mr->qkey), cl_ntoh16(mr->mlid), mr->mtu, mr->tclass,
        cl_ntoh16(mr->pkey), mr->rate, mr->pkt_life, sl,
        flow, hop, scope, join, mr->proxy_join);
}
