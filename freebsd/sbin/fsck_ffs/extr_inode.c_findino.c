
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inodesc {scalar_t__ id_parent; int id_name; struct direct* id_dirp; } ;
struct direct {scalar_t__ d_ino; int d_name; } ;


 int FOUND ;
 int KEEPON ;
 int STOP ;
 scalar_t__ UFS_ROOTINO ;
 scalar_t__ maxino ;
 scalar_t__ strcmp (int ,int ) ;

int
findino(struct inodesc *idesc)
{
 struct direct *dirp = idesc->id_dirp;

 if (dirp->d_ino == 0)
  return (KEEPON);
 if (strcmp(dirp->d_name, idesc->id_name) == 0 &&
     dirp->d_ino >= UFS_ROOTINO && dirp->d_ino <= maxino) {
  idesc->id_parent = dirp->d_ino;
  return (STOP|FOUND);
 }
 return (KEEPON);
}
