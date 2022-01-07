
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct xml_node_ctx {int dummy; } ;


 int os_free (char*) ;
 int os_memset (char*,char,int) ;
 char* os_readfile (char const*,size_t*) ;
 char* os_realloc (char*,size_t) ;
 char* os_strstr (char*,char*) ;
 int * xml_node_from_buf (struct xml_node_ctx*,char*) ;

xml_node_t * node_from_file(struct xml_node_ctx *ctx, const char *name)
{
 xml_node_t *node;
 char *buf, *buf2, *start;
 size_t len;

 buf = os_readfile(name, &len);
 if (buf == ((void*)0))
  return ((void*)0);
 buf2 = os_realloc(buf, len + 1);
 if (buf2 == ((void*)0)) {
  os_free(buf);
  return ((void*)0);
 }
 buf = buf2;
 buf[len] = '\0';

 start = os_strstr(buf, "<!DOCTYPE ");
 if (start) {
  char *pos = start + 1;
  int count = 1;
  while (*pos) {
   if (*pos == '<')
    count++;
   else if (*pos == '>') {
    count--;
    if (count == 0) {
     pos++;
     break;
    }
   }
   pos++;
  }
  if (count == 0) {

   os_memset(start, ' ', pos - start);
  }
 }

 node = xml_node_from_buf(ctx, buf);
 os_free(buf);

 return node;
}
