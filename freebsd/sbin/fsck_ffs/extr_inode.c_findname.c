
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inodesc {scalar_t__ id_parent; int id_entryno; int id_name; struct direct* id_dirp; } ;
struct direct {scalar_t__ d_ino; scalar_t__ d_namlen; int d_name; } ;


 int FOUND ;
 int KEEPON ;
 int STOP ;
 int memmove (int ,int ,size_t) ;

int
findname(struct inodesc *idesc)
{
 struct direct *dirp = idesc->id_dirp;

 if (dirp->d_ino != idesc->id_parent || idesc->id_entryno < 2) {
  idesc->id_entryno++;
  return (KEEPON);
 }
 memmove(idesc->id_name, dirp->d_name, (size_t)dirp->d_namlen + 1);
 return (STOP|FOUND);
}
