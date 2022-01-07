
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_hints {int dummy; } ;


 int free (struct iter_hints*) ;
 int hints_del_tree (struct iter_hints*) ;

void
hints_delete(struct iter_hints* hints)
{
 if(!hints)
  return;
 hints_del_tree(hints);
 free(hints);
}
