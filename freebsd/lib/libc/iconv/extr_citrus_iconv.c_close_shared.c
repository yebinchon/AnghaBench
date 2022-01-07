
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_iconv_shared {scalar_t__ ci_module; struct _citrus_iconv_shared* ci_ops; int (* io_uninit_shared ) (struct _citrus_iconv_shared*) ;scalar_t__ ci_closure; } ;


 int _citrus_unload_module (scalar_t__) ;
 int free (struct _citrus_iconv_shared*) ;
 int stub1 (struct _citrus_iconv_shared*) ;

__attribute__((used)) static __inline void
close_shared(struct _citrus_iconv_shared *ci)
{

 if (ci) {
  if (ci->ci_module) {
   if (ci->ci_ops) {
    if (ci->ci_closure)
     (*ci->ci_ops->io_uninit_shared)(ci);
    free(ci->ci_ops);
   }
   _citrus_unload_module(ci->ci_module);
  }
  free(ci);
 }
}
