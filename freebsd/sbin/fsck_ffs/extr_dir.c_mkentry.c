
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inodesc {scalar_t__ id_parent; int id_name; struct direct* id_dirp; } ;
struct direct {scalar_t__ d_ino; int d_reclen; scalar_t__ d_namlen; int d_name; int d_type; } ;
struct TYPE_2__ {int ino_type; } ;


 int ALTERED ;
 int DIRSIZ (int ,struct direct*) ;
 int KEEPON ;
 int STOP ;
 TYPE_1__* inoinfo (scalar_t__) ;
 int memmove (int ,int ,size_t) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int
mkentry(struct inodesc *idesc)
{
 struct direct *dirp = idesc->id_dirp;
 struct direct newent;
 int newlen, oldlen;

 newent.d_namlen = strlen(idesc->id_name);
 newlen = DIRSIZ(0, &newent);
 if (dirp->d_ino != 0)
  oldlen = DIRSIZ(0, dirp);
 else
  oldlen = 0;
 if (dirp->d_reclen - oldlen < newlen)
  return (KEEPON);
 newent.d_reclen = dirp->d_reclen - oldlen;
 dirp->d_reclen = oldlen;
 dirp = (struct direct *)(((char *)dirp) + oldlen);
 dirp->d_ino = idesc->id_parent;
 dirp->d_reclen = newent.d_reclen;
 dirp->d_type = inoinfo(idesc->id_parent)->ino_type;
 dirp->d_namlen = newent.d_namlen;
 memmove(dirp->d_name, idesc->id_name, (size_t)newent.d_namlen + 1);
 return (ALTERED|STOP);
}
