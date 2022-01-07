
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotafile {int quotatype; int fsname; } ;


 int QCMD (int ,int ) ;
 int Q_QUOTAOFF ;
 int quotactl (int ,int ,int ,int ) ;

int
quota_off(struct quotafile *qf)
{

 return (quotactl(qf->fsname, QCMD(Q_QUOTAOFF, qf->quotatype), 0, 0));
}
