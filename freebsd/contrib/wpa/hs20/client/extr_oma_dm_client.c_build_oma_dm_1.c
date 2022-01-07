
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int DM_CLIENT_INITIATED_MGMT ;
 int add_alert (struct hs20_osu_client*,int *,int,int ) ;
 int add_replace_devinfo (struct hs20_osu_client*,int *,int) ;
 char* mo_str (struct hs20_osu_client*,int *,char*) ;
 int oma_dm_add_hs20_generic_alert (struct hs20_osu_client*,int *,int,char const*,char*) ;
 int * oma_dm_build_hdr (struct hs20_osu_client*,char const*,int) ;
 int os_free (char*) ;
 int * xml_node_create (int ,int *,int *,char*) ;
 int xml_node_free (int ,int *) ;

__attribute__((used)) static xml_node_t * build_oma_dm_1(struct hs20_osu_client *ctx,
       const char *url, int msgid, const char *oper)
{
 xml_node_t *syncml, *syncbody;
 char *str;
 int cmdid = 0;

 syncml = oma_dm_build_hdr(ctx, url, msgid);
 if (syncml == ((void*)0))
  return ((void*)0);

 syncbody = xml_node_create(ctx->xml, syncml, ((void*)0), "SyncBody");
 if (syncbody == ((void*)0)) {
  xml_node_free(ctx->xml, syncml);
  return ((void*)0);
 }

 cmdid++;
 add_alert(ctx, syncbody, cmdid, DM_CLIENT_INITIATED_MGMT);

 str = mo_str(ctx, ((void*)0), "devdetail.xml");
 if (str == ((void*)0)) {
  xml_node_free(ctx->xml, syncml);
  return ((void*)0);
 }
 cmdid++;
 oma_dm_add_hs20_generic_alert(ctx, syncbody, cmdid, oper, str);
 os_free(str);

 cmdid++;
 add_replace_devinfo(ctx, syncbody, cmdid);

 xml_node_create(ctx->xml, syncbody, ((void*)0), "Final");

 return syncml;
}
