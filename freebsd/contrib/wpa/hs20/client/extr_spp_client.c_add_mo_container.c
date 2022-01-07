
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xml_namespace_t ;
struct xml_node_ctx {int dummy; } ;


 int MSG_ERROR ;
 scalar_t__ errno ;
 int * mo_to_tnds (struct xml_node_ctx*,int *,int ,char const*,char*) ;
 int * node_from_file (struct xml_node_ctx*,char const*) ;
 int os_free (char*) ;
 int strerror (scalar_t__) ;
 int wpa_printf (int ,char*,char const*,int ) ;
 int xml_node_add_attr (struct xml_node_ctx*,int *,int *,char*,char const*) ;
 int * xml_node_create_text (struct xml_node_ctx*,int *,int *,char*,char*) ;
 int xml_node_free (struct xml_node_ctx*,int *) ;
 char* xml_node_to_str (struct xml_node_ctx*,int *) ;

__attribute__((used)) static void add_mo_container(struct xml_node_ctx *ctx, xml_namespace_t *ns,
        xml_node_t *parent, const char *urn,
        const char *fname)
{
 xml_node_t *node;
 xml_node_t *fnode, *tnds;
 char *str;

 errno = 0;
 fnode = node_from_file(ctx, fname);
 if (!fnode) {
  wpa_printf(MSG_ERROR,
      "Failed to create XML node from file: %s, possible error: %s",
      fname, strerror(errno));
  return;
 }
 tnds = mo_to_tnds(ctx, fnode, 0, urn, "syncml:dmddf1.2");
 xml_node_free(ctx, fnode);
 if (!tnds)
  return;

 str = xml_node_to_str(ctx, tnds);
 xml_node_free(ctx, tnds);
 if (str == ((void*)0))
  return;

 node = xml_node_create_text(ctx, parent, ns, "moContainer", str);
 if (node)
  xml_node_add_attr(ctx, node, ns, "moURN", urn);
 os_free(str);
}
