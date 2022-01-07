
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct xml_node_ctx {int dummy; } ;


 unsigned char* base64_decode (unsigned char*,int ,size_t*) ;
 int os_free (unsigned char*) ;
 char* os_malloc (size_t) ;
 int os_memcpy (char*,unsigned char*,size_t) ;
 int strlen (char*) ;
 char* xml_node_get_text (struct xml_node_ctx*,int *) ;
 int xml_node_get_text_free (struct xml_node_ctx*,char*) ;

char * xml_node_get_base64_text(struct xml_node_ctx *ctx, xml_node_t *node,
    int *ret_len)
{
 char *txt;
 unsigned char *ret;
 size_t len;

 txt = xml_node_get_text(ctx, node);
 if (txt == ((void*)0))
  return ((void*)0);

 ret = base64_decode((unsigned char *) txt, strlen(txt), &len);
 if (ret_len)
  *ret_len = len;
 xml_node_get_text_free(ctx, txt);
 if (ret == ((void*)0))
  return ((void*)0);
 txt = os_malloc(len + 1);
 if (txt == ((void*)0)) {
  os_free(ret);
  return ((void*)0);
 }
 os_memcpy(txt, ret, len);
 txt[len] = '\0';
 return txt;
}
