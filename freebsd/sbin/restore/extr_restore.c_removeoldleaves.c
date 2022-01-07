
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct entry {scalar_t__ e_type; struct entry* e_next; int e_ino; struct entry* e_links; TYPE_1__* e_parent; } ;
typedef scalar_t__ ino_t ;
struct TYPE_2__ {scalar_t__ e_ino; } ;


 scalar_t__ LEAF ;
 scalar_t__ TSTINO (scalar_t__,int ) ;
 scalar_t__ UFS_ROOTINO ;
 scalar_t__ UFS_WINO ;
 int deleteino (int ) ;
 int delwhiteout (struct entry*) ;
 int dprintf (int ,char*,int ) ;
 int dumpmap ;
 int freeentry (struct entry*) ;
 struct entry* lookupino (scalar_t__) ;
 scalar_t__ maxino ;
 int mktempname (struct entry*) ;
 int myname (struct entry*) ;
 int removeleaf (struct entry*) ;
 struct entry* removelist ;
 int stdout ;
 int usedinomap ;
 int vprintf (int ,char*) ;

void
removeoldleaves(void)
{
 struct entry *ep, *nextep;
 ino_t i, mydirino;

 vprintf(stdout, "Mark entries to be removed.\n");
 if ((ep = lookupino(UFS_WINO))) {
  vprintf(stdout, "Delete whiteouts\n");
  for ( ; ep != ((void*)0); ep = nextep) {
   nextep = ep->e_links;
   mydirino = ep->e_parent->e_ino;




   if (TSTINO(mydirino, usedinomap) &&
       !TSTINO(mydirino, dumpmap))
    continue;
   delwhiteout(ep);
   freeentry(ep);
  }
 }
 for (i = UFS_ROOTINO + 1; i < maxino; i++) {
  ep = lookupino(i);
  if (ep == ((void*)0))
   continue;
  if (TSTINO(i, usedinomap))
   continue;
  for ( ; ep != ((void*)0); ep = ep->e_links) {
   dprintf(stdout, "%s: REMOVE\n", myname(ep));
   if (ep->e_type == LEAF) {
    removeleaf(ep);
    freeentry(ep);
   } else {
    mktempname(ep);
    deleteino(ep->e_ino);
    ep->e_next = removelist;
    removelist = ep;
   }
  }
 }
}
