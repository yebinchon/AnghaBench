
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;


typedef int uint ;
typedef int ufs2_daddr_t ;
struct TYPE_22__ {int d_error; } ;
struct TYPE_21__ {int cs_nffree; int cs_ndir; int cs_nbfree; } ;
struct TYPE_18__ {int cs_nffree; int cs_ndir; int cs_nbfree; } ;
struct TYPE_20__ {int fs_frag; scalar_t__ fs_contigsumsize; int fs_bsize; TYPE_1__ fs_cstotal; int fs_fsize; int fs_cgsize; } ;
struct TYPE_19__ {scalar_t__ cs_nbfree; int cs_nffree; int cs_ndir; } ;
struct TYPE_17__ {scalar_t__ cg_magic; int cg_ndblk; int * cg_frsum; TYPE_2__ cg_cs; } ;


 scalar_t__ CG_MAGIC ;
 int IFDIR ;
 TYPE_12__ acg ;
 int bread (TYPE_8__*,scalar_t__,char*,int ) ;
 int cg_blksfree (TYPE_12__*) ;
 int cg_clustersfree (TYPE_12__*) ;
 scalar_t__ cgput (TYPE_8__*,TYPE_12__*) ;
 int cgtod (TYPE_3__*,int ) ;
 int clrbit (int ,int) ;
 int clrblock (TYPE_3__*,int ,int) ;
 TYPE_8__ disk ;
 int err (int,char*,int ) ;
 int exit (int) ;
 int fragstoblks (TYPE_3__*,int) ;
 scalar_t__ fsbtodb (TYPE_3__*,int ) ;
 TYPE_5__* fscs ;
 int howmany (int,int ) ;
 scalar_t__ isblock (TYPE_3__*,int ,int) ;
 scalar_t__ part_ofs ;
 int printf (char*) ;
 TYPE_3__ sblock ;
 int setbit (int ,int) ;

ufs2_daddr_t
alloc(int size, int mode)
{
 int i, blkno, frag;
 uint d;

 bread(&disk, part_ofs + fsbtodb(&sblock, cgtod(&sblock, 0)), (char *)&acg,
     sblock.fs_cgsize);
 if (acg.cg_magic != CG_MAGIC) {
  printf("cg 0: bad magic number\n");
  exit(38);
 }
 if (acg.cg_cs.cs_nbfree == 0) {
  printf("first cylinder group ran out of space\n");
  exit(39);
 }
 for (d = 0; d < acg.cg_ndblk; d += sblock.fs_frag)
  if (isblock(&sblock, cg_blksfree(&acg), d / sblock.fs_frag))
   goto goth;
 printf("internal error: can't find block in cyl 0\n");
 exit(40);
goth:
 blkno = fragstoblks(&sblock, d);
 clrblock(&sblock, cg_blksfree(&acg), blkno);
 if (sblock.fs_contigsumsize > 0)
  clrbit(cg_clustersfree(&acg), blkno);
 acg.cg_cs.cs_nbfree--;
 sblock.fs_cstotal.cs_nbfree--;
 fscs[0].cs_nbfree--;
 if (mode & IFDIR) {
  acg.cg_cs.cs_ndir++;
  sblock.fs_cstotal.cs_ndir++;
  fscs[0].cs_ndir++;
 }
 if (size != sblock.fs_bsize) {
  frag = howmany(size, sblock.fs_fsize);
  fscs[0].cs_nffree += sblock.fs_frag - frag;
  sblock.fs_cstotal.cs_nffree += sblock.fs_frag - frag;
  acg.cg_cs.cs_nffree += sblock.fs_frag - frag;
  acg.cg_frsum[sblock.fs_frag - frag]++;
  for (i = frag; i < sblock.fs_frag; i++)
   setbit(cg_blksfree(&acg), d + i);
 }
 if (cgput(&disk, &acg) != 0)
  err(1, "alloc: cgput: %s", disk.d_error);
 return ((ufs2_daddr_t)d);
}
