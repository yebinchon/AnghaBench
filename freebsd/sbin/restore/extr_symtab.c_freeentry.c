
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {scalar_t__ e_flags; scalar_t__ e_type; scalar_t__ e_ino; struct entry* e_next; int e_name; struct entry* e_links; int * e_entries; } ;
typedef scalar_t__ ino_t ;


 scalar_t__ NODE ;
 scalar_t__ REMOVED ;
 int addino (scalar_t__,struct entry*) ;
 int badentry (struct entry*,char*) ;
 int deleteino (scalar_t__) ;
 struct entry* freelist ;
 int freename (int ) ;
 struct entry* lookupino (scalar_t__) ;
 int removeentry (struct entry*) ;

void
freeentry(struct entry *ep)
{
 struct entry *np;
 ino_t inum;

 if (ep->e_flags != REMOVED)
  badentry(ep, "not marked REMOVED");
 if (ep->e_type == NODE) {
  if (ep->e_links != ((void*)0))
   badentry(ep, "freeing referenced directory");
  if (ep->e_entries != ((void*)0))
   badentry(ep, "freeing non-empty directory");
 }
 if (ep->e_ino != 0) {
  np = lookupino(ep->e_ino);
  if (np == ((void*)0))
   badentry(ep, "lookupino failed");
  if (np == ep) {
   inum = ep->e_ino;
   deleteino(inum);
   if (ep->e_links != ((void*)0))
    addino(inum, ep->e_links);
  } else {
   for (; np != ((void*)0); np = np->e_links) {
    if (np->e_links == ep) {
     np->e_links = ep->e_links;
     break;
    }
   }
   if (np == ((void*)0))
    badentry(ep, "link not found");
  }
 }
 removeentry(ep);
 freename(ep->e_name);
 ep->e_next = freelist;
 freelist = ep;
}
