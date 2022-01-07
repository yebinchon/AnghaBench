
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xmlSchemaValidityWarningFunc ;
typedef int xmlSchemaValidityErrorFunc ;
typedef int xmlSchemaValidCtxtPtr ;
typedef int xmlSchemaPtr ;
typedef int xmlSchemaParserCtxtPtr ;
typedef int * xmlNodePtr ;
typedef int * xmlDocPtr ;
typedef int xmlChar ;
struct xml_node_ctx {int dummy; } ;
struct str_buf {char* buf; } ;
typedef int errors ;


 scalar_t__ add_str ;
 int os_free (char*) ;
 int os_memset (struct str_buf*,int ,int) ;
 int * xmlDocCopyNode (int *,int *,int) ;
 int xmlDocSetRootElement (int *,int *) ;
 int xmlFreeDoc (int *) ;
 int * xmlNewDoc (int *) ;
 int xmlSchemaFree (int ) ;
 int xmlSchemaFreeParserCtxt (int ) ;
 int xmlSchemaFreeValidCtxt (int ) ;
 int xmlSchemaNewParserCtxt (char const*) ;
 int xmlSchemaNewValidCtxt (int ) ;
 int xmlSchemaParse (int ) ;
 int xmlSchemaSetParserErrors (int ,int ,int ,struct str_buf*) ;
 int xmlSchemaSetValidErrors (int ,int ,int ,struct str_buf*) ;
 int xmlSchemaValidateDoc (int ,int *) ;

int xml_validate(struct xml_node_ctx *ctx, xml_node_t *node,
   const char *xml_schema_fname, char **ret_err)
{
 xmlDocPtr doc;
 xmlNodePtr n;
 xmlSchemaParserCtxtPtr pctx;
 xmlSchemaValidCtxtPtr vctx;
 xmlSchemaPtr schema;
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

 pctx = xmlSchemaNewParserCtxt(xml_schema_fname);
 xmlSchemaSetParserErrors(pctx, (xmlSchemaValidityErrorFunc) add_str,
     (xmlSchemaValidityWarningFunc) add_str,
     &errors);
 schema = xmlSchemaParse(pctx);
 xmlSchemaFreeParserCtxt(pctx);

 vctx = xmlSchemaNewValidCtxt(schema);
 xmlSchemaSetValidErrors(vctx, (xmlSchemaValidityErrorFunc) add_str,
    (xmlSchemaValidityWarningFunc) add_str,
    &errors);

 ret = xmlSchemaValidateDoc(vctx, doc);
 xmlSchemaFreeValidCtxt(vctx);
 xmlFreeDoc(doc);
 xmlSchemaFree(schema);

 if (ret == 0) {
  os_free(errors.buf);
  return 0;
 } else if (ret > 0) {
  if (ret_err)
   *ret_err = errors.buf;
  else
   os_free(errors.buf);
  return -1;
 } else {
  if (ret_err)
   *ret_err = errors.buf;
  else
   os_free(errors.buf);
  return -1;
 }
}
