
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct isoent* first; } ;
struct isoent {struct isoent* chnext; struct isoent* parent; TYPE_1__ children; scalar_t__ dir; } ;
struct archive_write {int archive; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int archive_set_error (int *,int ,char*) ;
 int isoent_add_child_tail (struct isoent*,struct isoent*) ;
 struct isoent* isoent_clone (struct isoent*) ;

__attribute__((used)) static int
isoent_clone_tree(struct archive_write *a, struct isoent **nroot,
    struct isoent *root)
{
 struct isoent *np, *xroot, *newent;

 np = root;
 xroot = ((void*)0);
 do {
  newent = isoent_clone(np);
  if (newent == ((void*)0)) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory");
   return (ARCHIVE_FATAL);
  }
  if (xroot == ((void*)0)) {
   *nroot = xroot = newent;
   newent->parent = xroot;
  } else
   isoent_add_child_tail(xroot, newent);
  if (np->dir && np->children.first != ((void*)0)) {

   np = np->children.first;
   xroot = newent;
   continue;
  }
  while (np != np->parent) {
   if (np->chnext == ((void*)0)) {

    np = np->parent;
    xroot = xroot->parent;
   } else {
    np = np->chnext;
    break;
   }
  }
 } while (np != np->parent);

 return (ARCHIVE_OK);
}
