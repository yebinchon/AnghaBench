
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int e_flags; scalar_t__ e_type; struct entry* e_links; } ;
typedef scalar_t__ ino_t ;


 int EXISTED ;
 int KEEP ;
 int NEW ;
 scalar_t__ NODE ;
 scalar_t__ UFS_WINO ;
 int badentry (struct entry*,char*) ;
 struct entry* lookupino (scalar_t__) ;
 scalar_t__ maxino ;
 int stdout ;
 int vprintf (int ,char*) ;

void
checkrestore(void)
{
 struct entry *ep;
 ino_t i;

 vprintf(stdout, "Check the symbol table.\n");
 for (i = UFS_WINO; i < maxino; i++) {
  for (ep = lookupino(i); ep != ((void*)0); ep = ep->e_links) {
   ep->e_flags &= ~KEEP;
   if (ep->e_type == NODE)
    ep->e_flags &= ~(NEW|EXISTED);
   if (ep->e_flags != 0)
    badentry(ep, "incomplete operations");
  }
 }
}
