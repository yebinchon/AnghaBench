
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inodesc {int id_parent; int id_name; struct direct* id_dirp; } ;
struct direct {int d_type; int d_ino; scalar_t__ d_namlen; int d_name; } ;
struct TYPE_2__ {int ino_type; } ;


 int ALTERED ;
 int KEEPON ;
 int STOP ;
 TYPE_1__* inoinfo (int ) ;
 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static int
chgino(struct inodesc *idesc)
{
 struct direct *dirp = idesc->id_dirp;

 if (memcmp(dirp->d_name, idesc->id_name, (int)dirp->d_namlen + 1))
  return (KEEPON);
 dirp->d_ino = idesc->id_parent;
 dirp->d_type = inoinfo(idesc->id_parent)->ino_type;
 return (ALTERED|STOP);
}
