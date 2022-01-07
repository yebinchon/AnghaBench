
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void const* key; struct TYPE_4__* rlink; struct TYPE_4__* llink; } ;
typedef TYPE_1__ posix_tnode ;


 int stub1 (void const*,void const*) ;

posix_tnode *
tfind(const void *vkey, posix_tnode * const *rootp,
    int (*compar)(const void *, const void *))
{

 if (rootp == ((void*)0))
  return ((void*)0);

 while (*rootp != ((void*)0)) {
  int r;

  if ((r = (*compar)(vkey, (*rootp)->key)) == 0)
   return *rootp;
  rootp = (r < 0) ?
      &(*rootp)->llink :
      &(*rootp)->rlink;
 }
 return ((void*)0);
}
