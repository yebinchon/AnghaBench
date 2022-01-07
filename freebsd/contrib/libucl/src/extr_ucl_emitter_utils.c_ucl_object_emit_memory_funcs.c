
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ucl_emitter_functions {TYPE_1__* ud; int ucl_emitter_free_func; int ucl_emitter_append_len; int ucl_emitter_append_int; int ucl_emitter_append_double; int ucl_emitter_append_character; } ;
struct TYPE_3__ {void** pd; void* d; } ;
typedef TYPE_1__ UT_string ;


 struct ucl_emitter_functions* calloc (int,int) ;
 int free ;
 int ucl_utstring_append_character ;
 int ucl_utstring_append_double ;
 int ucl_utstring_append_int ;
 int ucl_utstring_append_len ;
 int utstring_new (TYPE_1__*) ;

struct ucl_emitter_functions*
ucl_object_emit_memory_funcs (void **pmem)
{
 struct ucl_emitter_functions *f;
 UT_string *s;

 f = calloc (1, sizeof (*f));

 if (f != ((void*)0)) {
  f->ucl_emitter_append_character = ucl_utstring_append_character;
  f->ucl_emitter_append_double = ucl_utstring_append_double;
  f->ucl_emitter_append_int = ucl_utstring_append_int;
  f->ucl_emitter_append_len = ucl_utstring_append_len;
  f->ucl_emitter_free_func = free;
  utstring_new (s);
  f->ud = s;
  *pmem = s->d;
  s->pd = pmem;
 }

 return f;
}
