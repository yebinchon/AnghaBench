
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_forwards {int dummy; } ;


 int free (struct iter_forwards*) ;
 int fwd_del_tree (struct iter_forwards*) ;

void
forwards_delete(struct iter_forwards* fwd)
{
 if(!fwd)
  return;
 fwd_del_tree(fwd);
 free(fwd);
}
