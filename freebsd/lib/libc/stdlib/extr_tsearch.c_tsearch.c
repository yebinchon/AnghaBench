
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct path {int dummy; } ;
struct TYPE_5__ {scalar_t__ balance; void const* key; struct TYPE_5__* llink; struct TYPE_5__* rlink; } ;
typedef TYPE_1__ posix_tnode ;


 TYPE_1__* malloc (int) ;
 int path_init (struct path*) ;
 int path_taking_left (struct path*) ;
 int path_taking_right (struct path*) ;
 scalar_t__ path_took_left (struct path*) ;

posix_tnode *
tsearch(const void *key, posix_tnode **rootp,
    int (*compar)(const void *, const void *))
{
 struct path path;
 posix_tnode **leaf, *result, *n, *x, *y, *z;
 int cmp;


 if (rootp == ((void*)0))
  return (((void*)0));







 path_init(&path);
 leaf = rootp;
 while (*leaf != ((void*)0)) {
  if ((*leaf)->balance != 0) {
   rootp = leaf;
   path_init(&path);
  }
  cmp = compar(key, (*leaf)->key);
  if (cmp < 0) {
   path_taking_left(&path);
   leaf = &(*leaf)->llink;
  } else if (cmp > 0) {
   path_taking_right(&path);
   leaf = &(*leaf)->rlink;
  } else {
   return (*leaf);
  }
 }


 result = *leaf = malloc(sizeof(**leaf));
 if (result == ((void*)0))
  return (((void*)0));
 result->key = (void *)key;
 result->llink = ((void*)0);
 result->rlink = ((void*)0);
 result->balance = 0;







 for (n = *rootp; n != *leaf;) {
  if (path_took_left(&path)) {
   n->balance += 1;
   n = n->llink;
  } else {
   n->balance -= 1;
   n = n->rlink;
  }
 }






 x = *rootp;
 if (x->balance > 1) {
  y = x->llink;
  if (y->balance < 0) {
   z = y->rlink;
   y->rlink = z->llink;
   z->llink = y;
   x->llink = z->rlink;
   z->rlink = x;
   *rootp = z;

   x->balance = z->balance > 0 ? -1 : 0;
   y->balance = z->balance < 0 ? 1 : 0;
   z->balance = 0;
  } else {
   x->llink = y->rlink;
   y->rlink = x;
   *rootp = y;

   x->balance = 0;
   y->balance = 0;
  }
 } else if (x->balance < -1) {
  y = x->rlink;
  if (y->balance > 0) {
   posix_tnode *z = y->llink;
   x->rlink = z->llink;
   z->llink = x;
   y->llink = z->rlink;
   z->rlink = y;
   *rootp = z;

   x->balance = z->balance < 0 ? 1 : 0;
   y->balance = z->balance > 0 ? -1 : 0;
   z->balance = 0;
  } else {
   x->rlink = y->llink;
   y->llink = x;
   *rootp = y;

   x->balance = 0;
   y->balance = 0;
  }
 }


 return (result);
}
