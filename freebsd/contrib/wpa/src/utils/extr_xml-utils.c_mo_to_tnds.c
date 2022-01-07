
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct xml_node_ctx {int dummy; } ;


 int add_ddfname (struct xml_node_ctx*,int *,char const*) ;
 int node_to_tnds (struct xml_node_ctx*,int *,int *,char const*) ;
 int * xml_node_create (struct xml_node_ctx*,int *,int *,char*) ;
 int * xml_node_create_root (struct xml_node_ctx*,char const*,int *,int *,char*) ;
 int xml_node_create_text (struct xml_node_ctx*,int *,int *,char*,char const*) ;
 int xml_node_free (struct xml_node_ctx*,int *) ;
 char* xml_node_get_localname (struct xml_node_ctx*,int *) ;

xml_node_t * mo_to_tnds(struct xml_node_ctx *ctx, xml_node_t *mo,
   int use_path, const char *urn, const char *ns_uri)
{
 xml_node_t *root;
 xml_node_t *node;
 const char *name;

 root = xml_node_create_root(ctx, ns_uri, ((void*)0), ((void*)0), "MgmtTree");
 if (root == ((void*)0))
  return ((void*)0);

 xml_node_create_text(ctx, root, ((void*)0), "VerDTD", "1.2");

 name = xml_node_get_localname(ctx, mo);

 node = xml_node_create(ctx, root, ((void*)0), "Node");
 if (node == ((void*)0))
  goto fail;
 xml_node_create_text(ctx, node, ((void*)0), "NodeName", name);
 if (urn)
  add_ddfname(ctx, node, urn);

 node_to_tnds(ctx, use_path ? root : node, mo, use_path ? name : ((void*)0));

 return root;

fail:
 xml_node_free(ctx, root);
 return ((void*)0);
}
