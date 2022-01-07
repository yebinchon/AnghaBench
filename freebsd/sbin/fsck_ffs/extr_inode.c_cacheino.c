
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
typedef int ufs2_daddr_t ;
struct inoinfo {size_t i_parent; size_t i_dotdot; size_t i_number; int i_numblks; void** i_blks; void* i_isize; struct inoinfo* i_nexthash; } ;
typedef size_t ino_t ;
struct TYPE_2__ {int fs_bsize; } ;


 void* DIP (union dinode*,int ) ;
 int EEXIT ;
 int MIN (int,int) ;
 scalar_t__ Malloc (int) ;
 int UFS_NDADDR ;
 int UFS_NIADDR ;
 size_t UFS_ROOTINO ;
 int * di_db ;
 int * di_ib ;
 int di_size ;
 size_t dirhash ;
 int errx (int ,char*) ;
 int howmany (void*,int ) ;
 struct inoinfo** inphead ;
 scalar_t__ inplast ;
 struct inoinfo** inpsort ;
 scalar_t__ listmax ;
 scalar_t__ reallocarray (char*,scalar_t__,int) ;
 TYPE_1__ sblock ;

void
cacheino(union dinode *dp, ino_t inumber)
{
 struct inoinfo *inp, **inpp;
 int i, blks;

 if (howmany(DIP(dp, di_size), sblock.fs_bsize) > UFS_NDADDR)
  blks = UFS_NDADDR + UFS_NIADDR;
 else if (DIP(dp, di_size) > 0)
  blks = howmany(DIP(dp, di_size), sblock.fs_bsize);
 else
  blks = 1;
 inp = (struct inoinfo *)
  Malloc(sizeof(*inp) + (blks - 1) * sizeof(ufs2_daddr_t));
 if (inp == ((void*)0))
  errx(EEXIT, "cannot increase directory list");
 inpp = &inphead[inumber % dirhash];
 inp->i_nexthash = *inpp;
 *inpp = inp;
 inp->i_parent = inumber == UFS_ROOTINO ? UFS_ROOTINO : (ino_t)0;
 inp->i_dotdot = (ino_t)0;
 inp->i_number = inumber;
 inp->i_isize = DIP(dp, di_size);
 inp->i_numblks = blks;
 for (i = 0; i < MIN(blks, UFS_NDADDR); i++)
  inp->i_blks[i] = DIP(dp, di_db[i]);
 if (blks > UFS_NDADDR)
  for (i = 0; i < UFS_NIADDR; i++)
   inp->i_blks[UFS_NDADDR + i] = DIP(dp, di_ib[i]);
 if (inplast == listmax) {
  listmax += 100;
  inpsort = (struct inoinfo **)reallocarray((char *)inpsort,
      listmax, sizeof(struct inoinfo *));
  if (inpsort == ((void*)0))
   errx(EEXIT, "cannot increase directory list");
 }
 inpsort[inplast++] = inp;
}
