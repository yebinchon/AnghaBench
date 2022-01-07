
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xml_node_ctx {int dummy; } ;


 int os_free (struct xml_node_ctx*) ;
 int xmlCleanupParser () ;
 int xmlMemoryDump () ;
 int xmlSchemaCleanupTypes () ;

void xml_node_deinit_ctx(struct xml_node_ctx *ctx)
{
 xmlSchemaCleanupTypes();
 xmlCleanupParser();
 xmlMemoryDump();
 os_free(ctx);
}
