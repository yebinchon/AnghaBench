
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotafile {int fd; int wordsize; int fsname; int quotatype; } ;
struct dqblk {int dummy; } ;


 int EINVAL ;
 int QCMD (int ,int ) ;
 int Q_GETQUOTA ;
 int errno ;
 int quota_read32 (struct quotafile*,struct dqblk*,int) ;
 int quota_read64 (struct quotafile*,struct dqblk*,int) ;
 int quotactl (int ,int,int,struct dqblk*) ;

int
quota_read(struct quotafile *qf, struct dqblk *dqb, int id)
{
 int qcmd;

 if (qf->fd == -1) {
  qcmd = QCMD(Q_GETQUOTA, qf->quotatype);
  return (quotactl(qf->fsname, qcmd, id, dqb));
 }
 switch (qf->wordsize) {
 case 32:
  return (quota_read32(qf, dqb, id));
 case 64:
  return (quota_read64(qf, dqb, id));
 default:
  errno = EINVAL;
  return (-1);
 }

}
