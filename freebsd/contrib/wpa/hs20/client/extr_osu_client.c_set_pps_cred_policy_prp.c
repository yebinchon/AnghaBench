
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int val ;
struct hs20_osu_client {int xml; int ifname; } ;


 int MSG_INFO ;
 int atoi (char*) ;
 int * get_node (int ,int *,char*) ;
 scalar_t__ set_cred_quoted (int ,int,char*,char*) ;
 int snprintf (char*,int,char*,char*,int,int,char const*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strrchr (char*,char) ;
 int wpa_printf (int ,char*,...) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static void set_pps_cred_policy_prp(struct hs20_osu_client *ctx, int id,
        xml_node_t *prp)
{
 xml_node_t *node;
 char *txt = ((void*)0), *pos;
 char *prio, *country_buf = ((void*)0);
 const char *country;
 char val[200];
 int priority;

 node = get_node(ctx->xml, prp, "Priority");
 if (node == ((void*)0))
  return;
 prio = xml_node_get_text(ctx->xml, node);
 if (prio == ((void*)0))
  return;
 wpa_printf(MSG_INFO, "- Policy/PreferredRoamingPartnerList/<X+>/Priority = %s",
     prio);
 priority = atoi(prio);
 xml_node_get_text_free(ctx->xml, prio);

 node = get_node(ctx->xml, prp, "Country");
 if (node) {
  country_buf = xml_node_get_text(ctx->xml, node);
  if (country_buf == ((void*)0))
   return;
  country = country_buf;
  wpa_printf(MSG_INFO, "- Policy/PreferredRoamingPartnerList/<X+>/Country = %s",
      country);
 } else {
  country = "*";
 }

 node = get_node(ctx->xml, prp, "FQDN_Match");
 if (node == ((void*)0))
  goto out;
 txt = xml_node_get_text(ctx->xml, node);
 if (txt == ((void*)0))
  goto out;
 wpa_printf(MSG_INFO, "- Policy/PreferredRoamingPartnerList/<X+>/FQDN_Match = %s",
     txt);
 pos = strrchr(txt, ',');
 if (pos == ((void*)0))
  goto out;
 *pos++ = '\0';

 snprintf(val, sizeof(val), "%s,%d,%d,%s", txt,
   strcmp(pos, "includeSubdomains") != 0, priority, country);
 if (set_cred_quoted(ctx->ifname, id, "roaming_partner", val) < 0)
  wpa_printf(MSG_INFO, "Failed to set cred roaming_partner");
out:
 xml_node_get_text_free(ctx->xml, country_buf);
 xml_node_get_text_free(ctx->xml, txt);
}
