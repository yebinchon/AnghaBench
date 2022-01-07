
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* prev; struct TYPE_8__* next; struct TYPE_8__* child; int name; } ;
typedef TYPE_1__ NODE ;


 int assert (int ) ;
 scalar_t__ mtree_Sflag ;
 int nodecmp (TYPE_1__*,TYPE_1__*) ;
 int replacenode (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void
addchild(NODE *pathparent, NODE *centry)
{
 NODE *samename;
 NODE *replacepos;
 NODE *insertpos;

 NODE *cur;
 NODE *last;
 int cmp;

 samename = ((void*)0);
 replacepos = ((void*)0);
 insertpos = ((void*)0);
 last = ((void*)0);
 cur = pathparent->child;
 if (cur == ((void*)0)) {

  pathparent->child = centry;
  return;
 }
 for (; cur != ((void*)0); last = cur, cur = cur->next) {
  if (strcmp(centry->name, cur->name) == 0) {
   samename = cur;
  }
  if (mtree_Sflag) {
   cmp = nodecmp(centry, cur);
   if (cmp == 0) {
    replacepos = cur;
   } else if (cmp > 0) {
    insertpos = cur;
   }
  }
 }
 if (! mtree_Sflag) {
  if (samename != ((void*)0)) {

   replacepos = samename;
  } else {

   insertpos = last;
  }
 }

 if (samename != ((void*)0)) {






  replacenode(samename, centry);
  if (samename == replacepos) {

   return;
  }
  if (samename == insertpos || samename->prev == insertpos) {





   return;
  }
  centry = samename;
  if (centry->prev)
   centry->prev->next = centry->next;
  else {

   pathparent->child = centry->next;
   assert(centry->next != ((void*)0));
  }
  if (centry->next)
   centry->next->prev = centry->prev;
  centry->prev = ((void*)0);
  centry->next = ((void*)0);
 }

 if (insertpos == ((void*)0)) {

  pathparent->child->prev = centry;
  centry->next = pathparent->child;
  centry->prev = ((void*)0);
  pathparent->child = centry;
 } else {

  centry->next = insertpos->next;
  insertpos->next = centry;
  centry->prev = insertpos;
  if (centry->next)
   centry->next->prev = centry;
 }
 return;
}
