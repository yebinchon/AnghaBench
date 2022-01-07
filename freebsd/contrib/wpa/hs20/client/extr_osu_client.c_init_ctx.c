
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {char* ifname; int * http; int * xml; int devid; } ;


 int * get_node (int *,int *,char*) ;
 int * http_init_ctx (struct hs20_osu_client*,int *) ;
 int http_ocsp_set (int *,int) ;
 int http_set_cert_cb (int *,int ,struct hs20_osu_client*) ;
 int * node_from_file (int *,char*) ;
 int os_memset (struct hs20_osu_client*,int ,int) ;
 int os_strdup (char*) ;
 int osu_cert_cb ;
 int xml_node_deinit_ctx (int *) ;
 int xml_node_free (int *,int *) ;
 char* xml_node_get_text (int *,int *) ;
 int xml_node_get_text_free (int *,char*) ;
 int * xml_node_init_ctx (struct hs20_osu_client*,int *) ;

__attribute__((used)) static int init_ctx(struct hs20_osu_client *ctx)
{
 xml_node_t *devinfo, *devid;

 os_memset(ctx, 0, sizeof(*ctx));
 ctx->ifname = "wlan0";
 ctx->xml = xml_node_init_ctx(ctx, ((void*)0));
 if (ctx->xml == ((void*)0))
  return -1;

 devinfo = node_from_file(ctx->xml, "devinfo.xml");
 if (devinfo) {
  devid = get_node(ctx->xml, devinfo, "DevId");
  if (devid) {
   char *tmp = xml_node_get_text(ctx->xml, devid);

   if (tmp) {
    ctx->devid = os_strdup(tmp);
    xml_node_get_text_free(ctx->xml, tmp);
   }
  }
  xml_node_free(ctx->xml, devinfo);
 }

 ctx->http = http_init_ctx(ctx, ctx->xml);
 if (ctx->http == ((void*)0)) {
  xml_node_deinit_ctx(ctx->xml);
  return -1;
 }
 http_ocsp_set(ctx->http, 2);
 http_set_cert_cb(ctx->http, osu_cert_cb, ctx);

 return 0;
}
