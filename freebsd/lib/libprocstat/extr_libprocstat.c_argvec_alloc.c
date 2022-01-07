
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argvec {size_t bufsize; int argc; struct argvec* buf; int * argv; } ;


 int free (struct argvec*) ;
 void* malloc (int) ;

__attribute__((used)) static struct argvec *
argvec_alloc(size_t bufsize)
{
 struct argvec *av;

 av = malloc(sizeof(*av));
 if (av == ((void*)0))
  return (((void*)0));
 av->bufsize = bufsize;
 av->buf = malloc(av->bufsize);
 if (av->buf == ((void*)0)) {
  free(av);
  return (((void*)0));
 }
 av->argc = 32;
 av->argv = malloc(sizeof(char *) * av->argc);
 if (av->argv == ((void*)0)) {
  free(av->buf);
  free(av);
  return (((void*)0));
 }
 return av;
}
