
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
struct TYPE_7__ {int cs_ndir; int cs_nifree; } ;
struct cg {TYPE_2__ cg_cs; } ;
struct TYPE_6__ {struct cg* b_cg; } ;
struct bufarea {TYPE_1__ b_un; } ;
typedef scalar_t__ ino_t ;
struct TYPE_9__ {scalar_t__ ino_state; int ino_type; } ;
struct TYPE_8__ {scalar_t__ fs_ipg; int fs_fsize; } ;


 int DIP (union dinode*,int ) ;
 int DIP_SET (union dinode*,int ,int) ;
 scalar_t__ DSTATE ;
 scalar_t__ FSTATE ;


 int IFMT ;

 int IFTODT (int) ;
 scalar_t__ UFS_ROOTINO ;
 scalar_t__ USTATE ;
 int allocblk (long) ;
 int btodb (int) ;
 int cg_inosused (struct cg*) ;
 int cgdirty (struct bufarea*) ;
 struct bufarea* cglookup (int) ;
 int check_cgmagic (int,struct bufarea*) ;
 int di_atime ;
 int di_atimensec ;
 int di_blocks ;
 int di_ctime ;
 int di_ctimensec ;
 int * di_db ;
 int di_flags ;
 int di_mode ;
 int di_mtime ;
 int di_mtimensec ;
 int di_size ;
 union dinode* ginode (scalar_t__) ;
 int ino_to_cg (TYPE_3__*,scalar_t__) ;
 int inodirty (union dinode*) ;
 TYPE_4__* inoinfo (scalar_t__) ;
 scalar_t__ maxino ;
 int n_files ;
 TYPE_3__ sblock ;
 int setbit (int ,scalar_t__) ;
 int time (int *) ;

ino_t
allocino(ino_t request, int type)
{
 ino_t ino;
 union dinode *dp;
 struct bufarea *cgbp;
 struct cg *cgp;
 int cg;

 if (request == 0)
  request = UFS_ROOTINO;
 else if (inoinfo(request)->ino_state != USTATE)
  return (0);
 for (ino = request; ino < maxino; ino++)
  if (inoinfo(ino)->ino_state == USTATE)
   break;
 if (ino == maxino)
  return (0);
 cg = ino_to_cg(&sblock, ino);
 cgbp = cglookup(cg);
 cgp = cgbp->b_un.b_cg;
 if (!check_cgmagic(cg, cgbp))
  return (0);
 setbit(cg_inosused(cgp), ino % sblock.fs_ipg);
 cgp->cg_cs.cs_nifree--;
 switch (type & IFMT) {
 case 130:
  inoinfo(ino)->ino_state = DSTATE;
  cgp->cg_cs.cs_ndir++;
  break;
 case 128:
 case 129:
  inoinfo(ino)->ino_state = FSTATE;
  break;
 default:
  return (0);
 }
 cgdirty(cgbp);
 dp = ginode(ino);
 DIP_SET(dp, di_db[0], allocblk((long)1));
 if (DIP(dp, di_db[0]) == 0) {
  inoinfo(ino)->ino_state = USTATE;
  return (0);
 }
 DIP_SET(dp, di_mode, type);
 DIP_SET(dp, di_flags, 0);
 DIP_SET(dp, di_atime, time(((void*)0)));
 DIP_SET(dp, di_ctime, DIP(dp, di_atime));
 DIP_SET(dp, di_mtime, DIP(dp, di_ctime));
 DIP_SET(dp, di_mtimensec, 0);
 DIP_SET(dp, di_ctimensec, 0);
 DIP_SET(dp, di_atimensec, 0);
 DIP_SET(dp, di_size, sblock.fs_fsize);
 DIP_SET(dp, di_blocks, btodb(sblock.fs_fsize));
 n_files++;
 inodirty(dp);
 inoinfo(ino)->ino_type = IFTODT(type);
 return (ino);
}
