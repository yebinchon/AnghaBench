
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotafile {char const* qfname; } ;



const char *
quota_qfname(const struct quotafile *qf)
{

 return (qf->qfname);
}
