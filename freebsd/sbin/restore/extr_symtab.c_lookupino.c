
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {size_t e_ino; struct entry* e_next; } ;
typedef size_t ino_t ;


 size_t UFS_WINO ;
 struct entry** entry ;
 size_t entrytblsize ;
 size_t maxino ;

struct entry *
lookupino(ino_t inum)
{
 struct entry *ep;

 if (inum < UFS_WINO || inum >= maxino)
  return (((void*)0));
 for (ep = entry[inum % entrytblsize]; ep != ((void*)0); ep = ep->e_next)
  if (ep->e_ino == inum)
   return (ep);
 return (((void*)0));
}
