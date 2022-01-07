
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfctl {int dev; } ;


 int DIOCSETDEBUG ;
 scalar_t__ ioctl (int ,int ,unsigned int*) ;
 int warnx (char*) ;

int
pfctl_load_debug(struct pfctl *pf, unsigned int level)
{
 if (ioctl(pf->dev, DIOCSETDEBUG, &level)) {
  warnx("DIOCSETDEBUG");
  return (1);
 }
 return (0);
}
