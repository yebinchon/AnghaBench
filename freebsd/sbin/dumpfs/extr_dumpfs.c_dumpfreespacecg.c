
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fs_fpg; } ;
struct TYPE_3__ {int d_lcg; } ;


 int acg ;
 TYPE_2__ afs ;
 int cg_blksfree (int *) ;
 TYPE_1__ disk ;
 int pblklist (int ,int,int,int) ;

__attribute__((used)) static void
dumpfreespacecg(int fflag)
{

 pblklist(cg_blksfree(&acg), afs.fs_fpg, disk.d_lcg * afs.fs_fpg,
     fflag);
}
