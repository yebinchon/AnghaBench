
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct quotafile {int wordsize; int qfname; } ;
struct dqblk64 {int dummy; } ;
struct dqblk32 {int dummy; } ;


 scalar_t__ stat (int ,struct stat*) ;

int
quota_maxid(struct quotafile *qf)
{
 struct stat st;
 int maxid;

 if (stat(qf->qfname, &st) < 0)
  return (0);
 switch (qf->wordsize) {
 case 32:
  maxid = st.st_size / sizeof(struct dqblk32) - 1;
  break;
 case 64:
  maxid = st.st_size / sizeof(struct dqblk64) - 2;
  break;
 default:
  maxid = 0;
  break;
 }
 return (maxid > 0 ? maxid : 0);
}
