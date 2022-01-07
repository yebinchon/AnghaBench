
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct manpage {struct manpage* output; struct manpage* names; struct manpage* file; } ;


 int free (struct manpage*) ;

void
mansearch_free(struct manpage *res, size_t sz)
{
 size_t i;

 for (i = 0; i < sz; i++) {
  free(res[i].file);
  free(res[i].names);
  free(res[i].output);
 }
 free(res);
}
