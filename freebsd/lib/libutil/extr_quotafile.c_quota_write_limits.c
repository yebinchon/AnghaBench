
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotafile {int fd; int accmode; int wordsize; int fsname; int quotatype; } ;
struct dqblk {scalar_t__ dqb_bsoftlimit; scalar_t__ dqb_curblocks; scalar_t__ dqb_isoftlimit; scalar_t__ dqb_curinodes; scalar_t__ dqb_itime; scalar_t__ dqb_btime; } ;


 int EBADF ;
 int EINVAL ;
 int O_RDWR ;
 int QCMD (int ,int ) ;
 int Q_SETQUOTA ;
 int errno ;
 scalar_t__ quota_read (struct quotafile*,struct dqblk*,int) ;
 int quota_write32 (struct quotafile*,struct dqblk*,int) ;
 int quota_write64 (struct quotafile*,struct dqblk*,int) ;
 int quotactl (int ,int,int,struct dqblk*) ;

int
quota_write_limits(struct quotafile *qf, struct dqblk *dqb, int id)
{
 struct dqblk dqbuf;
 int qcmd;

 if (qf->fd == -1) {
  qcmd = QCMD(Q_SETQUOTA, qf->quotatype);
  return (quotactl(qf->fsname, qcmd, id, dqb));
 }



 if ((qf->accmode & O_RDWR) != O_RDWR) {
  errno = EBADF;
  return (-1);
 }
 if (quota_read(qf, &dqbuf, id) != 0)
  return (-1);






 if (dqbuf.dqb_bsoftlimit && id != 0 &&
     dqbuf.dqb_curblocks < dqbuf.dqb_bsoftlimit &&
     dqbuf.dqb_curblocks >= dqb->dqb_bsoftlimit)
  dqb->dqb_btime = 0;
 if (dqbuf.dqb_bsoftlimit == 0 && id != 0 &&
     dqb->dqb_bsoftlimit > 0 &&
     dqbuf.dqb_curblocks >= dqb->dqb_bsoftlimit)
  dqb->dqb_btime = 0;
 if (dqbuf.dqb_isoftlimit && id != 0 &&
     dqbuf.dqb_curinodes < dqbuf.dqb_isoftlimit &&
     dqbuf.dqb_curinodes >= dqb->dqb_isoftlimit)
  dqb->dqb_itime = 0;
 if (dqbuf.dqb_isoftlimit == 0 && id !=0 &&
     dqb->dqb_isoftlimit > 0 &&
     dqbuf.dqb_curinodes >= dqb->dqb_isoftlimit)
  dqb->dqb_itime = 0;
 dqb->dqb_curinodes = dqbuf.dqb_curinodes;
 dqb->dqb_curblocks = dqbuf.dqb_curblocks;



 switch (qf->wordsize) {
 case 32:
  return (quota_write32(qf, dqb, id));
 case 64:
  return (quota_write64(qf, dqb, id));
 default:
  errno = EINVAL;
  return (-1);
 }

}
