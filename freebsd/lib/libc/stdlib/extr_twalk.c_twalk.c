
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int posix_tnode ;
typedef int * cmp_fn_t ;


 int trecurse (int const*,int *,int ) ;

void
twalk(const posix_tnode *vroot, cmp_fn_t action)
{
 if (vroot != ((void*)0) && action != ((void*)0))
  trecurse(vroot, action, 0);
}
