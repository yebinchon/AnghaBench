
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct query_params {int dummy; } ;
struct TYPE_3__ {int raw; } ;
struct TYPE_4__ {int mtu; int rate; int pkey; int mlid; TYPE_1__ mgid; int sl_flow_hop; } ;
typedef TYPE_2__ ib_member_rec_t ;


 int AF_INET6 ;
 int INET6_ADDRSTRLEN ;
 int cl_ntoh16 (int ) ;
 int ib_member_get_sl_flow_hop (int ,int*,int *,int *) ;
 char* inet_ntop (int ,int ,char*,int) ;
 int printf (char*,char*,int,int,int,int,int) ;

__attribute__((used)) static void dump_multicast_group_record(void *data, struct query_params *p)
{
 char gid_str[INET6_ADDRSTRLEN];
 ib_member_rec_t *p_mcmr = data;
 uint8_t sl;
 ib_member_get_sl_flow_hop(p_mcmr->sl_flow_hop, &sl, ((void*)0), ((void*)0));
 printf("MCMemberRecord group dump:\n"
        "\t\tMGID....................%s\n"
        "\t\tMlid....................0x%X\n"
        "\t\tMtu.....................0x%X\n"
        "\t\tpkey....................0x%X\n"
        "\t\tRate....................0x%X\n"
        "\t\tSL......................0x%X\n",
        inet_ntop(AF_INET6, p_mcmr->mgid.raw, gid_str, sizeof gid_str),
        cl_ntoh16(p_mcmr->mlid),
        p_mcmr->mtu, cl_ntoh16(p_mcmr->pkey), p_mcmr->rate, sl);
}
