
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct str_buf {char* buf; void* warning; void* error; struct str_buf* userData; } ;
typedef struct str_buf xmlValidCtxt ;
typedef int * xmlNodePtr ;
typedef int * xmlDtdPtr ;
typedef int * xmlDocPtr ;
typedef int xmlChar ;
typedef int vctx ;
struct xml_node_ctx {int dummy; } ;
typedef int errors ;


 void* add_str ;
 int os_free (char*) ;
 int os_memset (struct str_buf*,int ,int) ;
 int * xmlDocCopyNode (int *,int *,int) ;
 int xmlDocSetRootElement (int *,int *) ;
 int xmlFreeDoc (int *) ;
 int xmlFreeDtd (int *) ;
 int * xmlNewDoc (int *) ;
 int * xmlParseDTD (int *,int const*) ;
 int xmlValidateDtd (struct str_buf*,int *,int *) ;

int xml_validate_dtd(struct xml_node_ctx *ctx, xml_node_t *node,
       const char *dtd_fname, char **ret_err)
{
 xmlDocPtr doc;
 xmlNodePtr n;
 xmlValidCtxt vctx;
 xmlDtdPtr dtd;
 int ret;
 struct str_buf errors;

 if (ret_err)
  *ret_err = ((void*)0);

 doc = xmlNewDoc((xmlChar *) "1.0");
 if (doc == ((void*)0))
  return -1;
 n = xmlDocCopyNode((xmlNodePtr) node, doc, 1);
 if (n == ((void*)0)) {
  xmlFreeDoc(doc);
  return -1;
 }
 xmlDocSetRootElement(doc, n);

 os_memset(&errors, 0, sizeof(errors));

 dtd = xmlParseDTD(((void*)0), (const xmlChar *) dtd_fname);
 if (dtd == ((void*)0)) {
  xmlFreeDoc(doc);
  return -1;
 }

 os_memset(&vctx, 0, sizeof(vctx));
 vctx.userData = &errors;
 vctx.error = add_str;
 vctx.warning = add_str;
 ret = xmlValidateDtd(&vctx, doc, dtd);
 xmlFreeDoc(doc);
 xmlFreeDtd(dtd);

 if (ret == 1) {
  os_free(errors.buf);
  return 0;
 } else {
  if (ret_err)
   *ret_err = errors.buf;
  else
   os_free(errors.buf);
  return -1;
 }
}
