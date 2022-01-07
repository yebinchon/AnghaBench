
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int e_flags; scalar_t__ e_type; struct entry* e_links; } ;
typedef scalar_t__ ino_t ;


 int BUFSIZ ;
 int HARDLINK ;
 int NEW ;
 scalar_t__ NODE ;
 int SYMLINK ;
 scalar_t__ UFS_ROOTINO ;
 scalar_t__ UFS_WINO ;
 int addwhiteout (int ) ;
 int linkit (char*,int ,int ) ;
 struct entry* lookupino (scalar_t__) ;
 scalar_t__ maxino ;
 int myname (struct entry*) ;
 int stdout ;
 int strcpy (char*,int ) ;
 int vprintf (int ,char*) ;

void
createlinks(void)
{
 struct entry *np, *ep;
 ino_t i;
 char name[BUFSIZ];

 if ((ep = lookupino(UFS_WINO))) {
  vprintf(stdout, "Add whiteouts\n");
  for ( ; ep != ((void*)0); ep = ep->e_links) {
   if ((ep->e_flags & NEW) == 0)
    continue;
   (void) addwhiteout(myname(ep));
   ep->e_flags &= ~NEW;
  }
 }
 vprintf(stdout, "Add links\n");
 for (i = UFS_ROOTINO; i < maxino; i++) {
  ep = lookupino(i);
  if (ep == ((void*)0))
   continue;
  for (np = ep->e_links; np != ((void*)0); np = np->e_links) {
   if ((np->e_flags & NEW) == 0)
    continue;
   (void) strcpy(name, myname(ep));
   if (ep->e_type == NODE) {
    (void) linkit(name, myname(np), SYMLINK);
   } else {
    (void) linkit(name, myname(np), HARDLINK);
   }
   np->e_flags &= ~NEW;
  }
 }
}
