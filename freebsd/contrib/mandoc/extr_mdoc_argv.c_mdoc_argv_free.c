
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdoc_arg {struct mdoc_arg* argv; scalar_t__ argc; scalar_t__ refcnt; } ;


 int argn_free (struct mdoc_arg*,int) ;
 int assert (scalar_t__) ;
 int free (struct mdoc_arg*) ;

void
mdoc_argv_free(struct mdoc_arg *p)
{
 int i;

 if (((void*)0) == p)
  return;

 if (p->refcnt) {
  --(p->refcnt);
  if (p->refcnt)
   return;
 }
 assert(p->argc);

 for (i = (int)p->argc - 1; i >= 0; i--)
  argn_free(p, i);

 free(p->argv);
 free(p);
}
