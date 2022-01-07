
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct entry {size_t e_ino; struct entry* e_next; } ;
typedef size_t ino_t ;


 size_t UFS_WINO ;
 int badentry (struct entry*,char*) ;
 scalar_t__ dflag ;
 struct entry** entry ;
 size_t entrytblsize ;
 size_t maxino ;
 int panic (char*,int ) ;

__attribute__((used)) static void
addino(ino_t inum, struct entry *np)
{
 struct entry **epp;

 if (inum < UFS_WINO || inum >= maxino)
  panic("addino: out of range %ju\n", (uintmax_t)inum);
 epp = &entry[inum % entrytblsize];
 np->e_ino = inum;
 np->e_next = *epp;
 *epp = np;
 if (dflag)
  for (np = np->e_next; np != ((void*)0); np = np->e_next)
   if (np->e_ino == inum)
    badentry(np, "duplicate inum");
}
