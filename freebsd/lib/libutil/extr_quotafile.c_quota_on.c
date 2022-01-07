
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotafile {int qfname; int fsname; int quotatype; } ;


 int QCMD (int ,int ) ;
 int Q_QUOTAON ;
 int quotactl (int ,int,int ,int ) ;

int
quota_on(struct quotafile *qf)
{
 int qcmd;

 qcmd = QCMD(Q_QUOTAON, qf->quotatype);
 return (quotactl(qf->fsname, qcmd, 0, qf->qfname));
}
