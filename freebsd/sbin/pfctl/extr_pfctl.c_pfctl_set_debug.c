
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct pfctl {int debug_set; int opts; int debug; } ;


 int DIOCSETDEBUG ;
 int PFCTL_FLAG_OPTION ;
 int PF_DEBUG_MISC ;
 int PF_DEBUG_NOISY ;
 int PF_DEBUG_NONE ;
 int PF_DEBUG_URGENT ;
 int PF_OPT_NOACTION ;
 int PF_OPT_VERBOSE ;
 int dev ;
 int err (int,char*) ;
 scalar_t__ ioctl (int ,int ,int *) ;
 int loadopt ;
 int printf (char*,char*) ;
 int strcmp (char*,char*) ;
 int warnx (char*,char*) ;

int
pfctl_set_debug(struct pfctl *pf, char *d)
{
 u_int32_t level;

 if ((loadopt & PFCTL_FLAG_OPTION) == 0)
  return (0);

 if (!strcmp(d, "none"))
  pf->debug = PF_DEBUG_NONE;
 else if (!strcmp(d, "urgent"))
  pf->debug = PF_DEBUG_URGENT;
 else if (!strcmp(d, "misc"))
  pf->debug = PF_DEBUG_MISC;
 else if (!strcmp(d, "loud"))
  pf->debug = PF_DEBUG_NOISY;
 else {
  warnx("unknown debug level \"%s\"", d);
  return (-1);
 }

 pf->debug_set = 1;
 level = pf->debug;

 if ((pf->opts & PF_OPT_NOACTION) == 0)
  if (ioctl(dev, DIOCSETDEBUG, &level))
   err(1, "DIOCSETDEBUG");

 if (pf->opts & PF_OPT_VERBOSE)
  printf("set debug %s\n", d);

 return (0);
}
