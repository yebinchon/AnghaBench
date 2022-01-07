
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plug {int ctx; struct common_plugin_method* dataptr; } ;
struct common_plugin_method {int (* fini ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void
plug_free(void *ptr)
{
    struct plug *pl = ptr;
    if (pl->dataptr) {
 struct common_plugin_method *cpm = pl->dataptr;
 cpm->fini(pl->ctx);
    }
}
