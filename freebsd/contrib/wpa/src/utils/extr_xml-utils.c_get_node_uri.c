
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct xml_node_ctx {int dummy; } ;


 int * get_node_uri_iter (struct xml_node_ctx*,int *,char*) ;
 int os_free (char*) ;
 char* os_strdup (char const*) ;

xml_node_t * get_node_uri(struct xml_node_ctx *ctx, xml_node_t *root,
     const char *uri)
{
 char *search;
 xml_node_t *node;

 search = os_strdup(uri);
 if (search == ((void*)0))
  return ((void*)0);

 node = get_node_uri_iter(ctx, root, search);

 os_free(search);
 return node;
}
