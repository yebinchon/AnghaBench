
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_var {int flags; scalar_t__ text; } ;


 int EOV ;
 int free (void*) ;

void
free_varlist(
 struct ctl_var *kv
 )
{
 struct ctl_var *k;
 if (kv) {
  for (k = kv; !(k->flags & EOV); k++)
   free((void *)(intptr_t)k->text);
  free((void *)kv);
 }
}
