
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int dummy; } ;


 int DM_HS20_SUBSCRIPTION_REMEDIATION ;
 int * build_oma_dm_1 (struct hs20_osu_client*,char const*,int,int ) ;
 int debug_dump_node (struct hs20_osu_client*,char*,int *) ;

__attribute__((used)) static xml_node_t * build_oma_dm_1_sub_rem(struct hs20_osu_client *ctx,
        const char *url, int msgid)
{
 xml_node_t *syncml;

 syncml = build_oma_dm_1(ctx, url, msgid,
    DM_HS20_SUBSCRIPTION_REMEDIATION);
 if (syncml)
  debug_dump_node(ctx, "OMA-DM Package 1 (sub rem)", syncml);

 return syncml;
}
