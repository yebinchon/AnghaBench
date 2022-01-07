
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inodesc {int id_parent; struct direct* id_dirp; } ;
struct direct {int d_ino; } ;


 int ALTERED ;
 int FOUND ;
 int KEEPON ;
 int STOP ;
 scalar_t__ desired ;
 int slotcount ;

int
chinumfunc(struct inodesc *idesc)
{
 struct direct *dirp = idesc->id_dirp;

 if (slotcount++ == desired) {
     dirp->d_ino = idesc->id_parent;
     return STOP|ALTERED|FOUND;
 }
 return KEEPON;
}
