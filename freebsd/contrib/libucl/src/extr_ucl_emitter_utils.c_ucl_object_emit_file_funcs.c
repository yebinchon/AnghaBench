
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_emitter_functions {int * ud; int * ucl_emitter_free_func; int ucl_emitter_append_len; int ucl_emitter_append_int; int ucl_emitter_append_double; int ucl_emitter_append_character; } ;
typedef int FILE ;


 struct ucl_emitter_functions* calloc (int,int) ;
 int ucl_file_append_character ;
 int ucl_file_append_double ;
 int ucl_file_append_int ;
 int ucl_file_append_len ;

struct ucl_emitter_functions*
ucl_object_emit_file_funcs (FILE *fp)
{
 struct ucl_emitter_functions *f;

 f = calloc (1, sizeof (*f));

 if (f != ((void*)0)) {
  f->ucl_emitter_append_character = ucl_file_append_character;
  f->ucl_emitter_append_double = ucl_file_append_double;
  f->ucl_emitter_append_int = ucl_file_append_int;
  f->ucl_emitter_append_len = ucl_file_append_len;
  f->ucl_emitter_free_func = ((void*)0);
  f->ud = fp;
 }

 return f;
}
