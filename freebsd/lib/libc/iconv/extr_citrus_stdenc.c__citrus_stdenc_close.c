
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_stdenc {scalar_t__ ce_module; struct _citrus_stdenc* ce_traits; struct _citrus_stdenc* ce_ops; int (* eo_uninit ) (struct _citrus_stdenc*) ;scalar_t__ ce_closure; } ;


 struct _citrus_stdenc _citrus_stdenc_default ;
 int _citrus_unload_module (scalar_t__) ;
 int free (struct _citrus_stdenc*) ;
 int stub1 (struct _citrus_stdenc*) ;

void
_citrus_stdenc_close(struct _citrus_stdenc *ce)
{

 if (ce == &_citrus_stdenc_default)
  return;

 if (ce->ce_module) {
  if (ce->ce_ops) {
   if (ce->ce_closure && ce->ce_ops->eo_uninit)
    (*ce->ce_ops->eo_uninit)(ce);
   free(ce->ce_ops);
  }
  free(ce->ce_traits);
  _citrus_unload_module(ce->ce_module);
 }
 free(ce);
}
