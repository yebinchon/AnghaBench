
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inodesc {int id_name; struct direct* id_dirp; } ;
struct direct {scalar_t__ d_reclen; int d_name; int d_namlen; } ;


 int ALTERED ;
 scalar_t__ DIRSIZ (int ,struct direct*) ;
 int FOUND ;
 int KEEPON ;
 int NEWDIRFMT ;
 int STOP ;
 scalar_t__ desired ;
 int slotcount ;
 int strcpy (int ,int ) ;
 int strlen (int ) ;

int
chnamefunc(struct inodesc *idesc)
{
 struct direct *dirp = idesc->id_dirp;
 struct direct testdir;

 if (slotcount++ == desired) {

     testdir.d_namlen = strlen(idesc->id_name);
     if (DIRSIZ(NEWDIRFMT, &testdir) <= dirp->d_reclen) {
  dirp->d_namlen = testdir.d_namlen;
  strcpy(dirp->d_name, idesc->id_name);
  return STOP|ALTERED|FOUND;
     } else
  return STOP|FOUND;
 }
 return KEEPON;
}
