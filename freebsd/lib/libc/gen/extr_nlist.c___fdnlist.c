
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nlist {int dummy; } ;
struct TYPE_3__ {int (* fn ) (int,struct nlist*) ;} ;


 unsigned int nitems (TYPE_1__*) ;
 TYPE_1__* nlist_fn ;
 int stub1 (int,struct nlist*) ;

int
__fdnlist(int fd, struct nlist *list)
{
 int n = -1;
 unsigned int i;

 for (i = 0; i < nitems(nlist_fn); i++) {
  n = (nlist_fn[i].fn)(fd, list);
  if (n != -1)
   break;
 }
 return (n);
}
