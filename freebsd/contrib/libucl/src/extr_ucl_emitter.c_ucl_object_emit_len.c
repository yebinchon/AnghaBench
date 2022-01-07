
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ucl_object_t ;
struct ucl_emitter_functions {TYPE_1__* ud; } ;
typedef enum ucl_emitter { ____Placeholder_ucl_emitter } ucl_emitter ;
struct TYPE_2__ {size_t i; } ;
typedef TYPE_1__ UT_string ;


 int ucl_object_emit_full (int const*,int,struct ucl_emitter_functions*,int *) ;
 int ucl_object_emit_funcs_free (struct ucl_emitter_functions*) ;
 struct ucl_emitter_functions* ucl_object_emit_memory_funcs (void**) ;

unsigned char *
ucl_object_emit_len (const ucl_object_t *obj, enum ucl_emitter emit_type,
  size_t *outlen)
{
 unsigned char *res = ((void*)0);
 struct ucl_emitter_functions *func;
 UT_string *s;

 if (obj == ((void*)0)) {
  return ((void*)0);
 }

 func = ucl_object_emit_memory_funcs ((void **)&res);

 if (func != ((void*)0)) {
  s = func->ud;
  ucl_object_emit_full (obj, emit_type, func, ((void*)0));

  if (outlen != ((void*)0)) {
   *outlen = s->i;
  }

  ucl_object_emit_funcs_free (func);
 }

 return res;
}
