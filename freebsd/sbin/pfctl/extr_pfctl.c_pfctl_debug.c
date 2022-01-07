
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int DIOCSETDEBUG ;




 int PF_OPT_QUIET ;
 int err (int,char*) ;
 int fprintf (int ,char*) ;
 scalar_t__ ioctl (int,int ,int*) ;
 int stderr ;

void
pfctl_debug(int dev, u_int32_t level, int opts)
{
 if (ioctl(dev, DIOCSETDEBUG, &level))
  err(1, "DIOCSETDEBUG");
 if ((opts & PF_OPT_QUIET) == 0) {
  fprintf(stderr, "debug level set to '");
  switch (level) {
  case 129:
   fprintf(stderr, "none");
   break;
  case 128:
   fprintf(stderr, "urgent");
   break;
  case 131:
   fprintf(stderr, "misc");
   break;
  case 130:
   fprintf(stderr, "loud");
   break;
  default:
   fprintf(stderr, "<invalid>");
   break;
  }
  fprintf(stderr, "'\n");
 }
}
