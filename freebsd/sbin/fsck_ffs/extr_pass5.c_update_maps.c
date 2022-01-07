
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ufs2_daddr_t ;
struct fs {int fs_ipg; int fs_fpg; } ;
struct TYPE_2__ {int cs_ndir; } ;
struct cg {int cg_cgx; TYPE_1__ cg_cs; } ;


 int CHAR_BIT ;
 int cg_blksfree (struct cg*) ;
 int cg_inosused (struct cg*) ;
 int check_maps (int ,int ,int,int,char*,int ,int,int,int) ;
 int freeblks ;
 int freedirs ;
 int freefiles ;
 int howmany (int,int ) ;
 int pfatal (char*,int) ;
 struct fs sblock ;

void
update_maps(
 struct cg *oldcg,
 struct cg *newcg,
 int usesysctl)
{
 int inomapsize, excessdirs;
 struct fs *fs = &sblock;

 inomapsize = howmany(fs->fs_ipg, CHAR_BIT);
 excessdirs = oldcg->cg_cs.cs_ndir - newcg->cg_cs.cs_ndir;
 if (excessdirs < 0) {
  pfatal("LOST %d DIRECTORIES\n", -excessdirs);
  excessdirs = 0;
 }
 if (excessdirs > 0)
  check_maps(cg_inosused(newcg), cg_inosused(oldcg), inomapsize,
      oldcg->cg_cgx * (ufs2_daddr_t)fs->fs_ipg, "DIR", freedirs,
      0, excessdirs, usesysctl);
 check_maps(cg_inosused(newcg), cg_inosused(oldcg), inomapsize,
     oldcg->cg_cgx * (ufs2_daddr_t)fs->fs_ipg, "FILE", freefiles,
     excessdirs, fs->fs_ipg, usesysctl);
 check_maps(cg_blksfree(oldcg), cg_blksfree(newcg),
     howmany(fs->fs_fpg, CHAR_BIT),
     oldcg->cg_cgx * (ufs2_daddr_t)fs->fs_fpg, "FRAG",
     freeblks, 0, fs->fs_fpg, usesysctl);
}
