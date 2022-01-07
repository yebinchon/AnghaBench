
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct xml_node_ctx {int dummy; } ;


 char* get_node_text (struct xml_node_ctx*,int *,char*) ;
 int * get_node_uri (struct xml_node_ctx*,int *,char const*) ;
 int printf (char*,char const*) ;
 int xml_node_create (struct xml_node_ctx*,int *,int *,char*) ;
 int * xml_node_create_root (struct xml_node_ctx*,int *,int *,int *,char*) ;
 int xml_node_create_text (struct xml_node_ctx*,int *,int *,char*,char*) ;
 int xml_node_get_text_free (struct xml_node_ctx*,char*) ;
 int xml_node_set_text (struct xml_node_ctx*,int *,char*) ;

__attribute__((used)) static xml_node_t * add_mo_node(struct xml_node_ctx *ctx, xml_node_t *root,
    xml_node_t *node, const char *uri)
{
 char *nodename, *value, *path;
 xml_node_t *parent;

 nodename = get_node_text(ctx, node, "NodeName");
 if (nodename == ((void*)0))
  return ((void*)0);
 value = get_node_text(ctx, node, "Value");

 if (root == ((void*)0)) {
  root = xml_node_create_root(ctx, ((void*)0), ((void*)0), ((void*)0),
         nodename);
  if (root && value)
   xml_node_set_text(ctx, root, value);
 } else {
  if (uri == ((void*)0)) {
   xml_node_get_text_free(ctx, nodename);
   xml_node_get_text_free(ctx, value);
   return ((void*)0);
  }
  path = get_node_text(ctx, node, "Path");
  if (path)
   uri = path;
  parent = get_node_uri(ctx, root, uri);
  xml_node_get_text_free(ctx, path);
  if (parent == ((void*)0)) {
   printf("Could not find URI '%s'\n", uri);
   xml_node_get_text_free(ctx, nodename);
   xml_node_get_text_free(ctx, value);
   return ((void*)0);
  }
  if (value)
   xml_node_create_text(ctx, parent, ((void*)0), nodename,
          value);
  else
   xml_node_create(ctx, parent, ((void*)0), nodename);
 }

 xml_node_get_text_free(ctx, nodename);
 xml_node_get_text_free(ctx, value);

 return root;
}
