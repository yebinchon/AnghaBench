
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

int
opt_welldefined(const char *ep)
{
 if ((strcmp(ep, "USER") == 0) ||
     (strcmp(ep, "DISPLAY") == 0) ||
     (strcmp(ep, "PRINTER") == 0) ||
     (strcmp(ep, "SYSTEMTYPE") == 0) ||
     (strcmp(ep, "JOB") == 0) ||
     (strcmp(ep, "ACCT") == 0))
  return(1);
 return(0);
}
