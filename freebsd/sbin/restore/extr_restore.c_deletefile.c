
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {scalar_t__ e_type; int e_flags; } ;
typedef int ino_t ;


 long FAIL ;
 long GOOD ;
 int NEW ;
 scalar_t__ NODE ;
 int REMOVED ;
 scalar_t__ TSTINO (int ,int ) ;
 int dumpmap ;
 int freeentry (struct entry*) ;
 scalar_t__ hflag ;
 struct entry* lookupname (char*) ;

long
deletefile(char *name, ino_t ino, int type)
{
 long descend = hflag ? GOOD : FAIL;
 struct entry *ep;

 if (TSTINO(ino, dumpmap) == 0)
  return (descend);
 ep = lookupname(name);
 if (ep != ((void*)0)) {
  ep->e_flags &= ~NEW;
  ep->e_flags |= REMOVED;
  if (ep->e_type != NODE)
   freeentry(ep);
 }
 return (descend);
}
