
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct entry {int e_flags; } ;
typedef scalar_t__ ino_t ;


 long FAIL ;
 long GOOD ;
 int LINK ;
 int NEW ;
 int NODE ;
 scalar_t__ TSTINO (scalar_t__,int ) ;
 scalar_t__ UFS_WINO ;
 struct entry* addentry (char*,scalar_t__,int) ;
 char command ;
 int dprintf (int ,char*,char*) ;
 int dumpmap ;
 int genliteraldir (char*,scalar_t__) ;
 scalar_t__ hflag ;
 struct entry* lookupino (scalar_t__) ;
 int mflag ;
 int myname (struct entry*) ;
 int newnode (struct entry*) ;
 int sprintf (char*,char*,int ) ;
 int stdout ;
 scalar_t__ strcmp (char*,int ) ;
 int vflag ;

long
addfile(char *name, ino_t ino, int type)
{
 struct entry *ep;
 long descend = hflag ? GOOD : FAIL;
 char buf[100];

 if (TSTINO(ino, dumpmap) == 0) {
  dprintf(stdout, "%s: not on the tape\n", name);
  return (descend);
 }
 if (ino == UFS_WINO && command == 'i' && !vflag)
  return (descend);
 if (!mflag) {
  (void) sprintf(buf, "./%ju", (uintmax_t)ino);
  name = buf;
  if (type == NODE) {
   (void) genliteraldir(name, ino);
   return (descend);
  }
 }
 ep = lookupino(ino);
 if (ep != ((void*)0)) {
  if (strcmp(name, myname(ep)) == 0) {
   ep->e_flags |= NEW;
   return (descend);
  }
  type |= LINK;
 }
 ep = addentry(name, ino, type);
 if (type == NODE)
  newnode(ep);
 ep->e_flags |= NEW;
 return (descend);
}
