
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; int ifname; } ;


 int MSG_INFO ;
 int * get_node (int ,int *,char*) ;
 scalar_t__ os_strcasecmp (char*,char*) ;
 scalar_t__ set_cred (int ,int,char*,char*) ;
 int wpa_printf (int ,char*,...) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static void set_pps_cred_policy_min_backhaul(struct hs20_osu_client *ctx, int id,
          xml_node_t *min_backhaul)
{
 xml_node_t *node;
 char *type, *dl = ((void*)0), *ul = ((void*)0);
 int home;

 node = get_node(ctx->xml, min_backhaul, "NetworkType");
 if (node == ((void*)0)) {
  wpa_printf(MSG_INFO, "Ignore MinBackhaulThreshold without mandatory NetworkType node");
  return;
 }

 type = xml_node_get_text(ctx->xml, node);
 if (type == ((void*)0))
  return;
 wpa_printf(MSG_INFO, "- Policy/MinBackhaulThreshold/<X+>/NetworkType = %s",
     type);
 if (os_strcasecmp(type, "home") == 0)
  home = 1;
 else if (os_strcasecmp(type, "roaming") == 0)
  home = 0;
 else {
  wpa_printf(MSG_INFO, "Ignore MinBackhaulThreshold with invalid NetworkType");
  xml_node_get_text_free(ctx->xml, type);
  return;
 }
 xml_node_get_text_free(ctx->xml, type);

 node = get_node(ctx->xml, min_backhaul, "DLBandwidth");
 if (node)
  dl = xml_node_get_text(ctx->xml, node);

 node = get_node(ctx->xml, min_backhaul, "ULBandwidth");
 if (node)
  ul = xml_node_get_text(ctx->xml, node);

 if (dl == ((void*)0) && ul == ((void*)0)) {
  wpa_printf(MSG_INFO, "Ignore MinBackhaulThreshold without either DLBandwidth or ULBandwidth nodes");
  return;
 }

 if (dl)
  wpa_printf(MSG_INFO, "- Policy/MinBackhaulThreshold/<X+>/DLBandwidth = %s",
      dl);
 if (ul)
  wpa_printf(MSG_INFO, "- Policy/MinBackhaulThreshold/<X+>/ULBandwidth = %s",
      ul);

 if (home) {
  if (dl &&
      set_cred(ctx->ifname, id, "min_dl_bandwidth_home", dl) < 0)
   wpa_printf(MSG_INFO, "Failed to set cred bandwidth limit");
  if (ul &&
      set_cred(ctx->ifname, id, "min_ul_bandwidth_home", ul) < 0)
   wpa_printf(MSG_INFO, "Failed to set cred bandwidth limit");
 } else {
  if (dl &&
      set_cred(ctx->ifname, id, "min_dl_bandwidth_roaming", dl) <
      0)
   wpa_printf(MSG_INFO, "Failed to set cred bandwidth limit");
  if (ul &&
      set_cred(ctx->ifname, id, "min_ul_bandwidth_roaming", ul) <
      0)
   wpa_printf(MSG_INFO, "Failed to set cred bandwidth limit");
 }

 xml_node_get_text_free(ctx->xml, dl);
 xml_node_get_text_free(ctx->xml, ul);
}
