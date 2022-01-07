
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfioc_altq {int version; } ;


 int DIOCGETALTQS ;
 scalar_t__ ENODEV ;
 int PFIOC_ALTQ_VERSION ;
 int PF_OPT_VERBOSE ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int fprintf (int ,char*) ;
 scalar_t__ ioctl (int,int ,struct pfioc_altq*) ;
 int stderr ;

int
pfctl_test_altqsupport(int dev, int opts)
{
 struct pfioc_altq pa;

 pa.version = PFIOC_ALTQ_VERSION;
 if (ioctl(dev, DIOCGETALTQS, &pa)) {
  if (errno == ENODEV) {
   if (opts & PF_OPT_VERBOSE)
    fprintf(stderr, "No ALTQ support in kernel\n"
        "ALTQ related functions disabled\n");
   return (0);
  } else
   err(1, "DIOCGETALTQS");
 }
 return (1);
}
