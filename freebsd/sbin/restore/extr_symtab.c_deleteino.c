
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct entry {size_t e_ino; struct entry* e_next; } ;
typedef size_t ino_t ;


 size_t UFS_WINO ;
 struct entry** entry ;
 size_t entrytblsize ;
 size_t maxino ;
 int panic (char*,int ) ;

void
deleteino(ino_t inum)
{
 struct entry *next;
 struct entry **prev;

 if (inum < UFS_WINO || inum >= maxino)
  panic("deleteino: out of range %ju\n", (uintmax_t)inum);
 prev = &entry[inum % entrytblsize];
 for (next = *prev; next != ((void*)0); next = next->e_next) {
  if (next->e_ino == inum) {
   next->e_ino = 0;
   *prev = next->e_next;
   return;
  }
  prev = &next->e_next;
 }
 panic("deleteino: %ju not found\n", (uintmax_t)inum);
}
