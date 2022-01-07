
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* di_extb; scalar_t__ di_extsize; } ;
union dinode {TYPE_1__ dp2; } ;
typedef int ufs_lbn_t ;
typedef scalar_t__ ufs2_daddr_t ;
typedef int ino_t ;
struct TYPE_8__ {int fs_frag; scalar_t__ fs_maxsymlinklen; } ;


 scalar_t__ DIP (union dinode*,int ) ;
 scalar_t__ IFLNK ;
 int NINDIR (TYPE_2__*) ;
 int UFS_NDADDR ;
 int UFS_NIADDR ;
 int UFS_NXADDR ;
 int * di_db ;
 int * di_ib ;
 int di_mode ;
 int di_size ;
 int err_suj (char*,int) ;
 TYPE_2__* fs ;
 scalar_t__ indir_blkatoff (scalar_t__,int ,int,int) ;
 int lblkno (TYPE_2__*,scalar_t__) ;
 int numfrags (TYPE_2__*,int ) ;
 int sblksize (TYPE_2__*,scalar_t__,int) ;

__attribute__((used)) static ufs2_daddr_t
ino_blkatoff(union dinode *ip, ino_t ino, ufs_lbn_t lbn, int *frags)
{
 ufs_lbn_t tmpval;
 ufs_lbn_t cur;
 ufs_lbn_t next;
 int i;




 if (lbn < 0 && lbn >= -UFS_NXADDR) {
  lbn = -1 - lbn;
  if (lbn > lblkno(fs, ip->dp2.di_extsize - 1))
   return (0);
  *frags = numfrags(fs, sblksize(fs, ip->dp2.di_extsize, lbn));
  return (ip->dp2.di_extb[lbn]);
 }



 if (DIP(ip, di_mode) == IFLNK &&
     DIP(ip, di_size) < fs->fs_maxsymlinklen)
  return (0);
 if (lbn >= 0 && lbn < UFS_NDADDR) {
  *frags = numfrags(fs, sblksize(fs, DIP(ip, di_size), lbn));
  return (DIP(ip, di_db[lbn]));
 }
 *frags = fs->fs_frag;

 for (i = 0, tmpval = NINDIR(fs), cur = UFS_NDADDR; i < UFS_NIADDR; i++,
     tmpval *= NINDIR(fs), cur = next) {
  next = cur + tmpval;
  if (lbn == -cur - i)
   return (DIP(ip, di_ib[i]));



  if (lbn < 0 && -lbn >= next)
   continue;
  if (lbn > 0 && lbn >= next)
   continue;
  return indir_blkatoff(DIP(ip, di_ib[i]), ino, -cur - i, lbn);
 }
 err_suj("lbn %jd not in ino\n", lbn);

}
