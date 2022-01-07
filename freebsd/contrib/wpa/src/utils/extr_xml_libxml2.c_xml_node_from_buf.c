
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef scalar_t__ xmlNodePtr ;
typedef int * xmlDocPtr ;
struct xml_node_ctx {int dummy; } ;


 int strlen (char const*) ;
 scalar_t__ xmlCopyNode (scalar_t__,int) ;
 scalar_t__ xmlDocGetRootElement (int *) ;
 int xmlFreeDoc (int *) ;
 int * xmlParseMemory (char const*,int ) ;

xml_node_t * xml_node_from_buf(struct xml_node_ctx *ctx, const char *buf)
{
 xmlDocPtr doc;
 xmlNodePtr node;

 doc = xmlParseMemory(buf, strlen(buf));
 if (doc == ((void*)0))
  return ((void*)0);
 node = xmlDocGetRootElement(doc);
 node = xmlCopyNode(node, 1);
 xmlFreeDoc(doc);

 return (xml_node_t *) node;
}
