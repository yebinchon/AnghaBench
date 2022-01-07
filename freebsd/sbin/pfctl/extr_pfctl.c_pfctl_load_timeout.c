
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfioc_tm {unsigned int timeout; unsigned int seconds; } ;
struct pfctl {int dev; } ;
typedef int pt ;


 int DIOCSETTIMEOUT ;
 scalar_t__ ioctl (int ,int ,struct pfioc_tm*) ;
 int memset (struct pfioc_tm*,int ,int) ;
 int warnx (char*) ;

int
pfctl_load_timeout(struct pfctl *pf, unsigned int timeout, unsigned int seconds)
{
 struct pfioc_tm pt;

 memset(&pt, 0, sizeof(pt));
 pt.timeout = timeout;
 pt.seconds = seconds;
 if (ioctl(pf->dev, DIOCSETTIMEOUT, &pt)) {
  warnx("DIOCSETTIMEOUT");
  return (1);
 }
 return (0);
}
