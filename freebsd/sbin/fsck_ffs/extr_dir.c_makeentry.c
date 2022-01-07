
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union dinode {int dummy; } dinode ;
struct inodesc {int id_name; int id_fix; scalar_t__ id_parent; scalar_t__ id_number; int id_func; int id_type; } ;
typedef scalar_t__ ino_t ;


 int ALTERED ;
 int DATA ;
 int DIP (union dinode*,int ) ;
 int DIP_SET (union dinode*,int ,int ) ;
 int DIRBLKSIZ ;
 int DONTKNOW ;
 int MAXPATHLEN ;
 scalar_t__ UFS_ROOTINO ;
 int ckinode (union dinode*,struct inodesc*) ;
 int di_size ;
 scalar_t__ expanddir (union dinode*,char*) ;
 int getpathname (char*,scalar_t__,scalar_t__) ;
 union dinode* ginode (scalar_t__) ;
 int inodirty (union dinode*) ;
 scalar_t__ maxino ;
 int memset (struct inodesc*,int ,int) ;
 int mkentry ;
 int roundup (int,int) ;
 int strdup (char const*) ;

int
makeentry(ino_t parent, ino_t ino, const char *name)
{
 union dinode *dp;
 struct inodesc idesc;
 char pathbuf[MAXPATHLEN + 1];

 if (parent < UFS_ROOTINO || parent >= maxino ||
     ino < UFS_ROOTINO || ino >= maxino)
  return (0);
 memset(&idesc, 0, sizeof(struct inodesc));
 idesc.id_type = DATA;
 idesc.id_func = mkentry;
 idesc.id_number = parent;
 idesc.id_parent = ino;
 idesc.id_fix = DONTKNOW;
 idesc.id_name = strdup(name);
 dp = ginode(parent);
 if (DIP(dp, di_size) % DIRBLKSIZ) {
  DIP_SET(dp, di_size, roundup(DIP(dp, di_size), DIRBLKSIZ));
  inodirty(dp);
 }
 if ((ckinode(dp, &idesc) & ALTERED) != 0)
  return (1);
 getpathname(pathbuf, parent, parent);
 dp = ginode(parent);
 if (expanddir(dp, pathbuf) == 0)
  return (0);
 return (ckinode(dp, &idesc) & ALTERED);
}
