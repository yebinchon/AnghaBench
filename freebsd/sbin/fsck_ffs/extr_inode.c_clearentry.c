
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inodesc {scalar_t__ id_parent; int id_entryno; struct direct* id_dirp; } ;
struct direct {scalar_t__ d_ino; } ;


 int ALTERED ;
 int FOUND ;
 int KEEPON ;
 int STOP ;

int
clearentry(struct inodesc *idesc)
{
 struct direct *dirp = idesc->id_dirp;

 if (dirp->d_ino != idesc->id_parent || idesc->id_entryno < 2) {
  idesc->id_entryno++;
  return (KEEPON);
 }
 dirp->d_ino = 0;
 return (STOP|FOUND|ALTERED);
}
