
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {scalar_t__ e_type; scalar_t__ e_flags; struct entry* e_sibling; struct entry* e_entries; struct entry* e_next; } ;
typedef scalar_t__ ino_t ;


 scalar_t__ LEAF ;
 scalar_t__ TSTINO (scalar_t__,int ) ;
 scalar_t__ UFS_ROOTINO ;
 int badentry (struct entry*,char*) ;
 int dprintf (int ,char*,int ) ;
 int dumpmap ;
 int freeentry (struct entry*) ;
 struct entry* lookupino (scalar_t__) ;
 scalar_t__ maxino ;
 int myname (struct entry*) ;
 int removeleaf (struct entry*) ;
 struct entry* removelist ;
 int stdout ;
 int vprintf (int ,char*) ;

void
findunreflinks(void)
{
 struct entry *ep, *np;
 ino_t i;

 vprintf(stdout, "Find unreferenced names.\n");
 for (i = UFS_ROOTINO; i < maxino; i++) {
  ep = lookupino(i);
  if (ep == ((void*)0) || ep->e_type == LEAF || TSTINO(i, dumpmap) == 0)
   continue;
  for (np = ep->e_entries; np != ((void*)0); np = np->e_sibling) {
   if (np->e_flags == 0) {
    dprintf(stdout,
        "%s: remove unreferenced name\n",
        myname(np));
    removeleaf(np);
    freeentry(np);
   }
  }
 }



 for (ep = removelist; ep != ((void*)0); ep = ep->e_next) {
  for (np = ep->e_entries; np != ((void*)0); np = np->e_sibling) {
   if (np->e_type == LEAF) {
    if (np->e_flags != 0)
     badentry(np, "unreferenced with flags");
    dprintf(stdout,
        "%s: remove unreferenced name\n",
        myname(np));
    removeleaf(np);
    freeentry(np);
   }
  }
 }
}
