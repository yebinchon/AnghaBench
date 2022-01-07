
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfioc_tm {scalar_t__ timeout; int seconds; } ;
typedef int pt ;
struct TYPE_2__ {char* name; scalar_t__ timeout; } ;


 int DIOCGETTIMEOUT ;
 scalar_t__ PFTM_ADAPTIVE_END ;
 scalar_t__ PFTM_ADAPTIVE_START ;
 int PF_OPT_SHOWALL ;
 int err (int,char*) ;
 scalar_t__ ioctl (int,int ,struct pfioc_tm*) ;
 int memset (struct pfioc_tm*,int ,int) ;
 TYPE_1__* pf_timeouts ;
 int pfctl_print_title (char*) ;
 int printf (char*,...) ;

int
pfctl_show_timeouts(int dev, int opts)
{
 struct pfioc_tm pt;
 int i;

 if (opts & PF_OPT_SHOWALL)
  pfctl_print_title("TIMEOUTS:");
 memset(&pt, 0, sizeof(pt));
 for (i = 0; pf_timeouts[i].name; i++) {
  pt.timeout = pf_timeouts[i].timeout;
  if (ioctl(dev, DIOCGETTIMEOUT, &pt))
   err(1, "DIOCGETTIMEOUT");
  printf("%-20s %10d", pf_timeouts[i].name, pt.seconds);
  if (pf_timeouts[i].timeout >= PFTM_ADAPTIVE_START &&
      pf_timeouts[i].timeout <= PFTM_ADAPTIVE_END)
   printf(" states");
  else
   printf("s");
  printf("\n");
 }
 return (0);

}
