
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_emitter_functions {int* ud; int (* ucl_emitter_free_func ) (struct ucl_emitter_functions*) ;int ucl_emitter_append_len; int ucl_emitter_append_int; int ucl_emitter_append_double; int ucl_emitter_append_character; } ;
typedef int fd ;


 struct ucl_emitter_functions* calloc (int,int) ;
 int free (struct ucl_emitter_functions*) ;
 int* malloc (int) ;
 int memcpy (int*,int*,int) ;
 int ucl_fd_append_character ;
 int ucl_fd_append_double ;
 int ucl_fd_append_int ;
 int ucl_fd_append_len ;

struct ucl_emitter_functions*
ucl_object_emit_fd_funcs (int fd)
{
 struct ucl_emitter_functions *f;
 int *ip;

 f = calloc (1, sizeof (*f));

 if (f != ((void*)0)) {
  ip = malloc (sizeof (fd));
  if (ip == ((void*)0)) {
   free (f);
   return ((void*)0);
  }

  memcpy (ip, &fd, sizeof (fd));
  f->ucl_emitter_append_character = ucl_fd_append_character;
  f->ucl_emitter_append_double = ucl_fd_append_double;
  f->ucl_emitter_append_int = ucl_fd_append_int;
  f->ucl_emitter_append_len = ucl_fd_append_len;
  f->ucl_emitter_free_func = free;
  f->ud = ip;
 }

 return f;
}
