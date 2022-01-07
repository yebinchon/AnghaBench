
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIOCCLRSRCNODES ;
 int PF_OPT_QUIET ;
 int err (int,char*) ;
 int fprintf (int ,char*) ;
 scalar_t__ ioctl (int,int ) ;
 int stderr ;

int
pfctl_clear_src_nodes(int dev, int opts)
{
 if (ioctl(dev, DIOCCLRSRCNODES))
  err(1, "DIOCCLRSRCNODES");
 if ((opts & PF_OPT_QUIET) == 0)
  fprintf(stderr, "source tracking entries cleared\n");
 return (0);
}
