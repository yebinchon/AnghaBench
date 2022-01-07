
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIOCCLRSTATUS ;
 int PF_OPT_QUIET ;
 int err (int,char*) ;
 int fprintf (int ,char*) ;
 scalar_t__ ioctl (int,int ) ;
 int stderr ;

int
pfctl_clear_stats(int dev, int opts)
{
 if (ioctl(dev, DIOCCLRSTATUS))
  err(1, "DIOCCLRSTATUS");
 if ((opts & PF_OPT_QUIET) == 0)
  fprintf(stderr, "pf: statistics cleared\n");
 return (0);
}
