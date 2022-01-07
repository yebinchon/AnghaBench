
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIOCSTOP ;
 int DIOCSTOPALTQ ;
 scalar_t__ ENOENT ;
 int PF_OPT_QUIET ;
 scalar_t__ altqsupport ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int fprintf (int ,char*) ;
 scalar_t__ ioctl (int,int ) ;
 int stderr ;

int
pfctl_disable(int dev, int opts)
{
 if (ioctl(dev, DIOCSTOP)) {
  if (errno == ENOENT)
   errx(1, "pf not enabled");
  else
   err(1, "DIOCSTOP");
 }
 if ((opts & PF_OPT_QUIET) == 0)
  fprintf(stderr, "pf disabled\n");

 if (altqsupport && ioctl(dev, DIOCSTOPALTQ))
   if (errno != ENOENT)
    err(1, "DIOCSTOPALTQ");

 return (0);
}
