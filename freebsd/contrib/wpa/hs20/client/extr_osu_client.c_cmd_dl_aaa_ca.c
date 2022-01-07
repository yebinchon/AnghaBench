
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int MSG_INFO ;
 int download_cert (struct hs20_osu_client*,int *,char const*) ;
 int * get_child_node (int ,int *,char*) ;
 int * node_from_file (int ,char const*) ;
 int wpa_printf (int ,char*,...) ;
 int * xml_node_first_child (int ,int *) ;
 int xml_node_free (int ,int *) ;

__attribute__((used)) static int cmd_dl_aaa_ca(struct hs20_osu_client *ctx, const char *pps_fname,
    const char *ca_fname)
{
 xml_node_t *pps, *node, *aaa;
 int ret;

 pps = node_from_file(ctx->xml, pps_fname);
 if (pps == ((void*)0)) {
  wpa_printf(MSG_INFO, "Could not read or parse '%s'", pps_fname);
  return -1;
 }

 node = get_child_node(ctx->xml, pps,
         "AAAServerTrustRoot");
 if (node == ((void*)0)) {
  wpa_printf(MSG_INFO, "No AAAServerTrustRoot/CertURL found from PPS");
  xml_node_free(ctx->xml, pps);
  return -2;
 }

 aaa = xml_node_first_child(ctx->xml, node);
 if (aaa == ((void*)0)) {
  wpa_printf(MSG_INFO, "No AAAServerTrustRoot/CertURL found from PPS");
  xml_node_free(ctx->xml, pps);
  return -1;
 }

 ret = download_cert(ctx, aaa, ca_fname);
 xml_node_free(ctx->xml, pps);

 return ret;
}
