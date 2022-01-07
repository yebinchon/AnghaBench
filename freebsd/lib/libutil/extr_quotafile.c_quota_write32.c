
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotafile {int fd; } ;
struct dqblk32 {void* dqb_itime; void* dqb_btime; void* dqb_curinodes; void* dqb_isoftlimit; void* dqb_ihardlimit; void* dqb_curblocks; void* dqb_bsoftlimit; void* dqb_bhardlimit; } ;
struct dqblk {int dqb_itime; int dqb_btime; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; int dqb_curblocks; int dqb_bsoftlimit; int dqb_bhardlimit; } ;
typedef int off_t ;
typedef int dqb32 ;


 void* CLIP32 (int ) ;
 int SEEK_SET ;
 int lseek (int ,int,int ) ;
 int write (int ,struct dqblk32*,int) ;

__attribute__((used)) static int
quota_write32(struct quotafile *qf, const struct dqblk *dqb, int id)
{
 struct dqblk32 dqb32;
 off_t off;

 dqb32.dqb_bhardlimit = CLIP32(dqb->dqb_bhardlimit);
 dqb32.dqb_bsoftlimit = CLIP32(dqb->dqb_bsoftlimit);
 dqb32.dqb_curblocks = CLIP32(dqb->dqb_curblocks);
 dqb32.dqb_ihardlimit = CLIP32(dqb->dqb_ihardlimit);
 dqb32.dqb_isoftlimit = CLIP32(dqb->dqb_isoftlimit);
 dqb32.dqb_curinodes = CLIP32(dqb->dqb_curinodes);
 dqb32.dqb_btime = CLIP32(dqb->dqb_btime);
 dqb32.dqb_itime = CLIP32(dqb->dqb_itime);

 off = id * sizeof(struct dqblk32);
 if (lseek(qf->fd, off, SEEK_SET) == -1)
  return (-1);
 if (write(qf->fd, &dqb32, sizeof(dqb32)) == sizeof(dqb32))
  return (0);
 return (-1);
}
