
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xml_namespace_t ;
struct hs20_osu_client {char const* devid; int xml; } ;


 int MSG_ERROR ;
 char* int2str (int) ;
 int oma_dm_add_locuri (struct hs20_osu_client*,int *,char*,char const*) ;
 int wpa_printf (int ,char*) ;
 int * xml_node_create (int ,int *,int *,char*) ;
 int * xml_node_create_root (int ,char*,int *,int **,char*) ;
 int xml_node_create_text (int ,int *,int *,char*,char*) ;

__attribute__((used)) static xml_node_t * oma_dm_build_hdr(struct hs20_osu_client *ctx,
         const char *url, int msgid)
{
 xml_node_t *syncml, *synchdr;
 xml_namespace_t *ns;

 if (!ctx->devid) {
  wpa_printf(MSG_ERROR,
      "DevId from devinfo.xml is not available - cannot use OMA DM");
  return ((void*)0);
 }

 syncml = xml_node_create_root(ctx->xml, "SYNCML:SYNCML1.2", ((void*)0), &ns,
          "SyncML");

 synchdr = xml_node_create(ctx->xml, syncml, ((void*)0), "SyncHdr");
 xml_node_create_text(ctx->xml, synchdr, ((void*)0), "VerDTD", "1.2");
 xml_node_create_text(ctx->xml, synchdr, ((void*)0), "VerProto", "DM/1.2");
 xml_node_create_text(ctx->xml, synchdr, ((void*)0), "SessionID", "1");
 xml_node_create_text(ctx->xml, synchdr, ((void*)0), "MsgID", int2str(msgid));

 oma_dm_add_locuri(ctx, synchdr, "Target", url);
 oma_dm_add_locuri(ctx, synchdr, "Source", ctx->devid);

 return syncml;
}
