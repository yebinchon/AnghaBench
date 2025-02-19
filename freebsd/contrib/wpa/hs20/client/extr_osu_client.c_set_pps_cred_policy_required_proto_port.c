
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int ifname; int xml; } ;


 int MSG_INFO ;
 int * get_node (int ,int *,char*) ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int os_snprintf (char*,size_t,char*,char*,...) ;
 int os_strlen (char*) ;
 scalar_t__ set_cred (int ,int,char*,char*) ;
 int wpa_printf (int ,char*,...) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static void set_pps_cred_policy_required_proto_port(struct hs20_osu_client *ctx,
          int id, xml_node_t *tuple)
{
 xml_node_t *node;
 char *proto, *port;
 char *buf;
 size_t buflen;

 node = get_node(ctx->xml, tuple, "IPProtocol");
 if (node == ((void*)0)) {
  wpa_printf(MSG_INFO, "Ignore RequiredProtoPortTuple without mandatory IPProtocol node");
  return;
 }

 proto = xml_node_get_text(ctx->xml, node);
 if (proto == ((void*)0))
  return;

 wpa_printf(MSG_INFO, "- Policy/RequiredProtoPortTuple/<X+>/IPProtocol = %s",
     proto);

 node = get_node(ctx->xml, tuple, "PortNumber");
 port = node ? xml_node_get_text(ctx->xml, node) : ((void*)0);
 if (port) {
  wpa_printf(MSG_INFO, "- Policy/RequiredProtoPortTuple/<X+>/PortNumber = %s",
      port);
  buflen = os_strlen(proto) + os_strlen(port) + 10;
  buf = os_malloc(buflen);
  if (buf)
   os_snprintf(buf, buflen, "%s:%s", proto, port);
  xml_node_get_text_free(ctx->xml, port);
 } else {
  buflen = os_strlen(proto) + 10;
  buf = os_malloc(buflen);
  if (buf)
   os_snprintf(buf, buflen, "%s", proto);
 }

 xml_node_get_text_free(ctx->xml, proto);

 if (buf == ((void*)0))
  return;

 if (set_cred(ctx->ifname, id, "req_conn_capab", buf) < 0)
  wpa_printf(MSG_INFO, "Could not set req_conn_capab");

 os_free(buf);
}
