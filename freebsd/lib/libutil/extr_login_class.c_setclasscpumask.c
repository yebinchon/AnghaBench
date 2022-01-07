
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int maskset ;
typedef int login_cap_t ;
typedef int cpusetid_t ;
typedef int cpuset_t ;


 int CPU_LEVEL_CPUSET ;
 int CPU_WHICH_PID ;
 int CPU_ZERO (int *) ;
 int LOG_ERR ;
 int LOG_WARNING ;
 scalar_t__ cpuset (int *) ;
 scalar_t__ cpuset_setaffinity (int ,int ,int,int,int *) ;
 int errno ;
 int list2cpuset (char const*,int *) ;
 char* login_getcapstr (int *,char*,int *,int *) ;
 scalar_t__ strcasecmp (char*,char const*) ;
 int strerror (int ) ;
 int syslog (int ,char*,char const*,...) ;

void
setclasscpumask(login_cap_t *lc)
{
 const char *maskstr;
 cpuset_t maskset;
 cpusetid_t setid;

 maskstr = login_getcapstr(lc, "cpumask", ((void*)0), ((void*)0));
 CPU_ZERO(&maskset);
 if (maskstr == ((void*)0))
  return;
 if (strcasecmp("default", maskstr) == 0)
  return;
 if (!list2cpuset(maskstr, &maskset)) {
  syslog(LOG_WARNING,
      "list2cpuset(%s) invalid mask specification", maskstr);
  return;
 }

 if (cpuset(&setid) != 0) {
  syslog(LOG_ERR, "cpuset(): %s", strerror(errno));
  return;
 }

 if (cpuset_setaffinity(CPU_LEVEL_CPUSET, CPU_WHICH_PID, -1,
     sizeof(maskset), &maskset) != 0)
  syslog(LOG_ERR, "cpuset_setaffinity(%s): %s", maskstr,
      strerror(errno));
}
