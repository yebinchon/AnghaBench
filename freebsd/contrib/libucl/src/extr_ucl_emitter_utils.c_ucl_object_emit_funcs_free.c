
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_emitter_functions {int ud; int (* ucl_emitter_free_func ) (int ) ;} ;


 int free (struct ucl_emitter_functions*) ;
 int stub1 (int ) ;

void
ucl_object_emit_funcs_free (struct ucl_emitter_functions *f)
{
 if (f != ((void*)0)) {
  if (f->ucl_emitter_free_func != ((void*)0)) {
   f->ucl_emitter_free_func (f->ud);
  }
  free (f);
 }
}
