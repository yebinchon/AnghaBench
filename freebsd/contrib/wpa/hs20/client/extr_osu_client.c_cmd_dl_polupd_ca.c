
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
 int xml_node_free (int ,int *) ;

__attribute__((used)) static int cmd_dl_polupd_ca(struct hs20_osu_client *ctx, const char *pps_fname,
       const char *ca_fname)
{
 xml_node_t *pps, *node;
 int ret;

 pps = node_from_file(ctx->xml, pps_fname);
 if (pps == ((void*)0)) {
  wpa_printf(MSG_INFO, "Could not read or parse '%s'", pps_fname);
  return -1;
 }

 node = get_child_node(ctx->xml, pps,
         "Policy/PolicyUpdate/TrustRoot");
 if (node == ((void*)0)) {
  wpa_printf(MSG_INFO, "No Policy/PolicyUpdate/TrustRoot/CertURL found from PPS");
  xml_node_free(ctx->xml, pps);
  return -2;
 }

 ret = download_cert(ctx, node, ca_fname);
 xml_node_free(ctx->xml, pps);

 return ret;
}
