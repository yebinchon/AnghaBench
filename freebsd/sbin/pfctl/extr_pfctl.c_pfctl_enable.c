
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIOCSTART ;
 int DIOCSTARTALTQ ;
 scalar_t__ EEXIST ;
 scalar_t__ ESRCH ;
 int PF_OPT_QUIET ;
 scalar_t__ altqsupport ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int fprintf (int ,char*) ;
 scalar_t__ ioctl (int,int ) ;
 int stderr ;

int
pfctl_enable(int dev, int opts)
{
 if (ioctl(dev, DIOCSTART)) {
  if (errno == EEXIST)
   errx(1, "pf already enabled");
  else if (errno == ESRCH)
   errx(1, "pfil registeration failed");
  else
   err(1, "DIOCSTART");
 }
 if ((opts & PF_OPT_QUIET) == 0)
  fprintf(stderr, "pf enabled\n");

 if (altqsupport && ioctl(dev, DIOCSTARTALTQ))
  if (errno != EEXIST)
   err(1, "DIOCSTARTALTQ");

 return (0);
}
