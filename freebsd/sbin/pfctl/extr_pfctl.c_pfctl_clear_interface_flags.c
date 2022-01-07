
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfioc_iface {int pfiio_flags; } ;
typedef int pi ;


 int DIOCCLRIFFLAG ;
 int PFI_IFLAG_SKIP ;
 int PF_OPT_NOACTION ;
 int PF_OPT_QUIET ;
 int bzero (struct pfioc_iface*,int) ;
 int err (int,char*) ;
 int fprintf (int ,char*) ;
 scalar_t__ ioctl (int,int ,struct pfioc_iface*) ;
 int stderr ;

int
pfctl_clear_interface_flags(int dev, int opts)
{
 struct pfioc_iface pi;

 if ((opts & PF_OPT_NOACTION) == 0) {
  bzero(&pi, sizeof(pi));
  pi.pfiio_flags = PFI_IFLAG_SKIP;

  if (ioctl(dev, DIOCCLRIFFLAG, &pi))
   err(1, "DIOCCLRIFFLAG");
  if ((opts & PF_OPT_QUIET) == 0)
   fprintf(stderr, "pf: interface flags reset\n");
 }
 return (0);
}
