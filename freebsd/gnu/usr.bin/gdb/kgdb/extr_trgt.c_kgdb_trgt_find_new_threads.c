
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int (* to_find_new_threads ) () ;} ;


 struct target_ops* find_target_beneath (int *) ;
 int kgdb_trgt_ops ;
 int * kvm ;
 int stub1 () ;

__attribute__((used)) static void
kgdb_trgt_find_new_threads(void)
{
 struct target_ops *tb;

 if (kvm != ((void*)0))
  return;

 tb = find_target_beneath(&kgdb_trgt_ops);
 if (tb->to_find_new_threads != ((void*)0))
  tb->to_find_new_threads();
}
