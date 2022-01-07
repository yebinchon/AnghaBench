
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct xml_node_ctx {int dummy; } ;


 char* xml_node_get_text (struct xml_node_ctx*,int *) ;

__attribute__((used)) static char * get_val(struct xml_node_ctx *ctx, xml_node_t *node)
{
 char *val, *pos;

 val = xml_node_get_text(ctx, node);
 if (val == ((void*)0))
  return ((void*)0);
 pos = val;
 while (*pos) {
  if (*pos != ' ' && *pos != '\t' && *pos != '\r' && *pos != '\n')
   return val;
  pos++;
 }

 return ((void*)0);
}
