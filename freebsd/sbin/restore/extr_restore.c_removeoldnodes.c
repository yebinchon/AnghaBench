
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {struct entry* e_next; int * e_entries; } ;


 int badentry (struct entry*,char*) ;
 int freeentry (struct entry*) ;
 struct entry* removelist ;
 int removenode (struct entry*) ;
 int stdout ;
 int vprintf (int ,char*) ;

void
removeoldnodes(void)
{
 struct entry *ep, **prev;
 long change;

 vprintf(stdout, "Remove old nodes (directories).\n");
 do {
  change = 0;
  prev = &removelist;
  for (ep = removelist; ep != ((void*)0); ep = *prev) {
   if (ep->e_entries != ((void*)0)) {
    prev = &ep->e_next;
    continue;
   }
   *prev = ep->e_next;
   removenode(ep);
   freeentry(ep);
   change++;
  }
 } while (change);
 for (ep = removelist; ep != ((void*)0); ep = ep->e_next)
  badentry(ep, "cannot remove, non-empty");
}
