
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct sa_query_result {unsigned int result_cnt; int p_result_madw; } ;
struct query_params {int dummy; } ;
struct TYPE_12__ {scalar_t__ description; } ;
struct TYPE_11__ {scalar_t__ port_guid; int node_guid; } ;
struct TYPE_15__ {TYPE_3__ node_desc; TYPE_2__ node_info; } ;
typedef TYPE_6__ ib_node_record_t ;
struct TYPE_10__ {scalar_t__ interface_id; } ;
struct TYPE_14__ {int raw; TYPE_1__ unicast; } ;
struct TYPE_13__ {int raw; } ;
struct TYPE_16__ {int scope_state; int proxy_join; TYPE_5__ port_gid; int mlid; TYPE_4__ mgid; } ;
typedef TYPE_7__ ib_member_rec_t ;


 int AF_INET6 ;
 int INET6_ADDRSTRLEN ;
 int cl_ntoh16 (int ) ;
 int free (char*) ;
 char* inet_ntop (int ,int ,char*,int) ;
 int node_name_map ;
 int printf (char*,char*,...) ;
 char* remap_node_name (int ,int ,char*) ;
 scalar_t__ requested_name ;
 TYPE_6__* sa_get_query_rec (int ,unsigned int) ;
 char* strdup (char*) ;
 scalar_t__ strtol (scalar_t__,int *,int ) ;

__attribute__((used)) static void dump_multicast_member_record(ib_member_rec_t *p_mcmr,
      struct sa_query_result *nr_result,
      struct query_params *params)
{
 char gid_str[INET6_ADDRSTRLEN];
 char gid_str2[INET6_ADDRSTRLEN];
 uint16_t mlid = cl_ntoh16(p_mcmr->mlid);
 unsigned i = 0;
 char *node_name = strdup("<unknown>");





 for (i = 0; i < nr_result->result_cnt; i++) {
  ib_node_record_t *nr = sa_get_query_rec(nr_result->p_result_madw, i);
  if (nr->node_info.port_guid ==
      p_mcmr->port_gid.unicast.interface_id) {
   if(node_name != ((void*)0))
    free(node_name);
   node_name = remap_node_name(node_name_map,
      nr->node_info.node_guid,
      (char *)nr->node_desc.description);
   break;
  }
 }

 if (requested_name) {
  if (strtol(requested_name, ((void*)0), 0) == mlid)
   printf("\t\tPortGid.................%s (%s)\n",
          inet_ntop(AF_INET6, p_mcmr->port_gid.raw,
      gid_str, sizeof gid_str), node_name);
 } else {
  printf("MCMemberRecord member dump:\n"
         "\t\tMGID....................%s\n"
         "\t\tMlid....................0x%X\n"
         "\t\tPortGid.................%s\n"
         "\t\tScopeState..............0x%X\n"
         "\t\tProxyJoin...............0x%X\n"
         "\t\tNodeDescription.........%s\n",
         inet_ntop(AF_INET6, p_mcmr->mgid.raw, gid_str,
     sizeof gid_str),
         cl_ntoh16(p_mcmr->mlid),
         inet_ntop(AF_INET6, p_mcmr->port_gid.raw,
     gid_str2, sizeof gid_str2),
         p_mcmr->scope_state, p_mcmr->proxy_join, node_name);
 }
 free(node_name);
}
