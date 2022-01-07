
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct entry {int e_type; struct entry* e_links; } ;
typedef scalar_t__ ino_t ;


 long FAIL ;
 long GOOD ;
 int LEAF ;
 int badentry (struct entry*,char*) ;
 int fprintf (int ,char*,char*) ;
 struct entry* lookupino (scalar_t__) ;
 struct entry* lookupname (char*) ;
 int panic (char*,int ) ;
 int stderr ;

long
verifyfile(char *name, ino_t ino, int type)
{
 struct entry *np, *ep;
 long descend = GOOD;

 ep = lookupname(name);
 if (ep == ((void*)0)) {
  fprintf(stderr, "Warning: missing name %s\n", name);
  return (FAIL);
 }
 np = lookupino(ino);
 if (np != ep)
  descend = FAIL;
 for ( ; np != ((void*)0); np = np->e_links)
  if (np == ep)
   break;
 if (np == ((void*)0))
  panic("missing inumber %ju\n", (uintmax_t)ino);
 if (ep->e_type == LEAF && type != LEAF)
  badentry(ep, "type should be LEAF");
 return (descend);
}
