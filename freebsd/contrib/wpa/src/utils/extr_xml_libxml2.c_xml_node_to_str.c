
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xmlNodePtr ;
typedef int xmlDocPtr ;
typedef int xmlChar ;
struct xml_node_ctx {int dummy; } ;


 char* os_strdup (char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int xmlDocCopyNode (int ,int ,int) ;
 int xmlDocDumpFormatMemory (int ,int **,int*,int ) ;
 int xmlDocSetRootElement (int ,int ) ;
 int xmlFree (int *) ;
 int xmlFreeDoc (int ) ;
 int xmlNewDoc (int *) ;

char * xml_node_to_str(struct xml_node_ctx *ctx, xml_node_t *node)
{
 xmlChar *buf;
 int bufsiz;
 char *ret, *pos;
 xmlNodePtr n = (xmlNodePtr) node;
 xmlDocPtr doc;

 doc = xmlNewDoc((xmlChar *) "1.0");
 n = xmlDocCopyNode(n, doc, 1);
 xmlDocSetRootElement(doc, n);
 xmlDocDumpFormatMemory(doc, &buf, &bufsiz, 0);
 xmlFreeDoc(doc);
 if (!buf)
  return ((void*)0);
 pos = (char *) buf;
 if (strncmp(pos, "<?xml", 5) == 0) {
  pos = strchr(pos, '>');
  if (pos)
   pos++;
  while (pos && (*pos == '\r' || *pos == '\n'))
   pos++;
 }
 if (pos)
  ret = os_strdup(pos);
 else
  ret = ((void*)0);
 xmlFree(buf);

 if (ret) {
  pos = ret;
  if (pos[0]) {
   while (pos[1])
    pos++;
  }
  while (pos >= ret && *pos == '\n')
   *pos-- = '\0';
 }

 return ret;
}
