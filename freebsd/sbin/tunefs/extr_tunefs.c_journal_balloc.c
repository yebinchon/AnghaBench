
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ ufs2_daddr_t ;
struct TYPE_9__ {int cs_nbfree; } ;
struct cg {TYPE_1__ cg_cs; } ;
struct TYPE_11__ {scalar_t__ d_ccg; struct cg d_cg; } ;
struct TYPE_10__ {int fs_bsize; } ;


 scalar_t__ bwrite (TYPE_4__*,int ,int ,int ) ;
 scalar_t__ cgballoc (TYPE_4__*) ;
 int cgread (TYPE_4__*) ;
 scalar_t__ cgwrite (TYPE_4__*) ;
 int clrbuf ;
 TYPE_4__ disk ;
 int fsbtodb (TYPE_2__*,scalar_t__) ;
 TYPE_2__ sblock ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static ufs2_daddr_t
journal_balloc(void)
{
 ufs2_daddr_t blk;
 struct cg *cgp;
 int valid;
 static int contig = 1;

 cgp = &disk.d_cg;
 for (;;) {
  blk = cgballoc(&disk);
  if (blk > 0)
   break;




  if (cgwrite(&disk) < 0) {
   warn("Failed to write updated cg");
   return (-1);
  }
  while ((valid = cgread(&disk)) == 1) {




   if (cgp->cg_cs.cs_nbfree > 256 * 1024)
    break;
   if (contig == 0 && cgp->cg_cs.cs_nbfree)
    break;
  }
  if (valid)
   continue;




  if (contig) {
   contig = 0;
   disk.d_ccg = 0;
   warnx("Journal file fragmented.");
   continue;
  }
  warnx("Failed to find sufficient free blocks for the journal");
  return -1;
 }
 if (bwrite(&disk, fsbtodb(&sblock, blk), clrbuf,
     sblock.fs_bsize) <= 0) {
  warn("Failed to initialize new block");
  return -1;
 }
 return (blk);
}
