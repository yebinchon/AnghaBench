
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct isoent* first; } ;
struct isoent {struct isoent* chnext; struct isoent* parent; TYPE_1__ children; scalar_t__ dir; } ;


 int _isoent_free (struct isoent*) ;

__attribute__((used)) static void
isoent_free_all(struct isoent *isoent)
{
 struct isoent *np, *np_temp;

 if (isoent == ((void*)0))
  return;
 np = isoent;
 for (;;) {
  if (np->dir) {
   if (np->children.first != ((void*)0)) {

    np = np->children.first;
    continue;
   }
  }
  for (;;) {
   np_temp = np;
   if (np->chnext == ((void*)0)) {

    np = np->parent;
    _isoent_free(np_temp);
    if (np == np_temp)
     return;
   } else {
    np = np->chnext;
    _isoent_free(np_temp);
    break;
   }
  }
 }
}
