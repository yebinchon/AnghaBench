
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotafile {int fd; } ;
struct dqblk32 {int dqb_itime; int dqb_btime; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; int dqb_curblocks; int dqb_bsoftlimit; int dqb_bhardlimit; } ;
struct dqblk {int dqb_itime; int dqb_btime; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; int dqb_curblocks; int dqb_bsoftlimit; int dqb_bhardlimit; } ;
typedef int off_t ;
typedef int dqb32 ;


 int SEEK_SET ;
 int lseek (int ,int,int ) ;
 int memset (struct dqblk*,int ,int) ;
 int read (int ,struct dqblk32*,int) ;

__attribute__((used)) static int
quota_read32(struct quotafile *qf, struct dqblk *dqb, int id)
{
 struct dqblk32 dqb32;
 off_t off;

 off = id * sizeof(struct dqblk32);
 if (lseek(qf->fd, off, SEEK_SET) == -1)
  return (-1);
 switch (read(qf->fd, &dqb32, sizeof(dqb32))) {
 case 0:
  memset(dqb, 0, sizeof(*dqb));
  return (0);
 case sizeof(dqb32):
  dqb->dqb_bhardlimit = dqb32.dqb_bhardlimit;
  dqb->dqb_bsoftlimit = dqb32.dqb_bsoftlimit;
  dqb->dqb_curblocks = dqb32.dqb_curblocks;
  dqb->dqb_ihardlimit = dqb32.dqb_ihardlimit;
  dqb->dqb_isoftlimit = dqb32.dqb_isoftlimit;
  dqb->dqb_curinodes = dqb32.dqb_curinodes;
  dqb->dqb_btime = dqb32.dqb_btime;
  dqb->dqb_itime = dqb32.dqb_itime;
  return (0);
 default:
  return (-1);
 }
}
