
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlChar ;
struct xml_node_ctx {int dummy; } ;


 int xmlFree (int *) ;

void xml_node_get_text_free(struct xml_node_ctx *ctx, char *val)
{
 if (val)
  xmlFree((xmlChar *) val);
}
