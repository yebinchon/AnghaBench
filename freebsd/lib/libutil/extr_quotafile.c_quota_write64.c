
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotafile {int fd; } ;
struct dqhdr64 {int dummy; } ;
struct dqblk64 {void* dqb_itime; void* dqb_btime; void* dqb_curinodes; void* dqb_isoftlimit; void* dqb_ihardlimit; void* dqb_curblocks; void* dqb_bsoftlimit; void* dqb_bhardlimit; } ;
struct dqblk {int dqb_itime; int dqb_btime; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; int dqb_curblocks; int dqb_bsoftlimit; int dqb_bhardlimit; } ;
typedef int off_t ;
typedef int dqb64 ;


 int SEEK_SET ;
 void* htobe64 (int ) ;
 int lseek (int ,int,int ) ;
 int write (int ,struct dqblk64*,int) ;

__attribute__((used)) static int
quota_write64(struct quotafile *qf, const struct dqblk *dqb, int id)
{
 struct dqblk64 dqb64;
 off_t off;

 dqb64.dqb_bhardlimit = htobe64(dqb->dqb_bhardlimit);
 dqb64.dqb_bsoftlimit = htobe64(dqb->dqb_bsoftlimit);
 dqb64.dqb_curblocks = htobe64(dqb->dqb_curblocks);
 dqb64.dqb_ihardlimit = htobe64(dqb->dqb_ihardlimit);
 dqb64.dqb_isoftlimit = htobe64(dqb->dqb_isoftlimit);
 dqb64.dqb_curinodes = htobe64(dqb->dqb_curinodes);
 dqb64.dqb_btime = htobe64(dqb->dqb_btime);
 dqb64.dqb_itime = htobe64(dqb->dqb_itime);

 off = sizeof(struct dqhdr64) + id * sizeof(struct dqblk64);
 if (lseek(qf->fd, off, SEEK_SET) == -1)
  return (-1);
 if (write(qf->fd, &dqb64, sizeof(dqb64)) == sizeof(dqb64))
  return (0);
 return (-1);
}
