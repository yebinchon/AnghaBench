
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ di_extsize; scalar_t__* di_extb; } ;
union dinode {TYPE_1__ dp2; } ;
typedef scalar_t__ uint64_t ;
typedef int ufs_lbn_t ;
typedef int (* ino_visitor ) (int ,int,scalar_t__,int) ;
typedef int ino_t ;
struct TYPE_7__ {scalar_t__ fs_magic; scalar_t__ fs_maxsymlinklen; } ;


 scalar_t__ DIP (union dinode*,int ) ;
 scalar_t__ FS_UFS2_MAGIC ;
 int IFBLK ;
 int IFCHR ;
 int IFLNK ;
 scalar_t__ IFMT ;
 int NINDIR (TYPE_2__*) ;
 int UFS_NDADDR ;
 int UFS_NIADDR ;
 int UFS_NXADDR ;
 int VISIT_EXT ;
 int VISIT_ROOT ;
 int * di_db ;
 int * di_ib ;
 int di_mode ;
 int di_size ;
 TYPE_2__* fs ;
 int indir_visit (int ,int,scalar_t__,scalar_t__*,int (*) (int ,int,scalar_t__,int),int) ;
 int numfrags (TYPE_2__*,int) ;
 int sblksize (TYPE_2__*,scalar_t__,int) ;

__attribute__((used)) static uint64_t
ino_visit(union dinode *ip, ino_t ino, ino_visitor visitor, int flags)
{
 ufs_lbn_t nextlbn;
 ufs_lbn_t tmpval;
 ufs_lbn_t lbn;
 uint64_t size;
 uint64_t fragcnt;
 int mode;
 int frags;
 int i;

 size = DIP(ip, di_size);
 mode = DIP(ip, di_mode) & IFMT;
 fragcnt = 0;
 if ((flags & VISIT_EXT) &&
     fs->fs_magic == FS_UFS2_MAGIC && ip->dp2.di_extsize) {
  for (i = 0; i < UFS_NXADDR; i++) {
   if (ip->dp2.di_extb[i] == 0)
    continue;
   frags = sblksize(fs, ip->dp2.di_extsize, i);
   frags = numfrags(fs, frags);
   fragcnt += frags;
   visitor(ino, -1 - i, ip->dp2.di_extb[i], frags);
  }
 }

 if (mode == IFBLK || mode == IFCHR ||
     (mode == IFLNK && size < fs->fs_maxsymlinklen))
  return (fragcnt);
 for (i = 0; i < UFS_NDADDR; i++) {
  if (DIP(ip, di_db[i]) == 0)
   continue;
  frags = sblksize(fs, size, i);
  frags = numfrags(fs, frags);
  fragcnt += frags;
  visitor(ino, i, DIP(ip, di_db[i]), frags);
 }




 flags |= VISIT_ROOT;
 for (i = 0, tmpval = NINDIR(fs), lbn = UFS_NDADDR; i < UFS_NIADDR; i++,
     lbn = nextlbn) {
  nextlbn = lbn + tmpval;
  tmpval *= NINDIR(fs);
  if (DIP(ip, di_ib[i]) == 0)
   continue;
  indir_visit(ino, -lbn - i, DIP(ip, di_ib[i]), &fragcnt, visitor,
      flags);
 }
 return (fragcnt);
}
