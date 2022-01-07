
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfioc_limit {unsigned int index; unsigned int limit; } ;
struct pfctl {int dev; } ;
typedef int pl ;


 int DIOCSETLIMIT ;
 scalar_t__ EBUSY ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int ,int ,struct pfioc_limit*) ;
 int memset (struct pfioc_limit*,int ,int) ;
 int warnx (char*) ;

int
pfctl_load_limit(struct pfctl *pf, unsigned int index, unsigned int limit)
{
 struct pfioc_limit pl;

 memset(&pl, 0, sizeof(pl));
 pl.index = index;
 pl.limit = limit;
 if (ioctl(pf->dev, DIOCSETLIMIT, &pl)) {
  if (errno == EBUSY)
   warnx("Current pool size exceeds requested hard limit");
  else
   warnx("DIOCSETLIMIT");
  return (1);
 }
 return (0);
}
