
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {struct entry* e_sibling; struct entry* e_entries; struct entry* e_parent; } ;


 int badentry (struct entry*,char*) ;

__attribute__((used)) static void
removeentry(struct entry *ep)
{
 struct entry *np;

 np = ep->e_parent;
 if (np->e_entries == ep) {
  np->e_entries = ep->e_sibling;
 } else {
  for (np = np->e_entries; np != ((void*)0); np = np->e_sibling) {
   if (np->e_sibling == ep) {
    np->e_sibling = ep->e_sibling;
    break;
   }
  }
  if (np == ((void*)0))
   badentry(ep, "cannot find entry in parent list");
 }
}
