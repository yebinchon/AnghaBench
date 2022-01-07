
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINVAL ;
 scalar_t__ ENOENT ;
 int EX_DATAERR ;
 int EX_OSERR ;
 char* SYSCTL_UNSCRIPT ;
 int err (int ,char*,char*) ;
 scalar_t__ errno ;
 scalar_t__ strlen (char*) ;
 int sysctlbyname (char*,int *,int *,char*,scalar_t__) ;
 int usage () ;

void
ddb_unscript(int argc, char *argv[])
{
 int ret;

 if (argc != 2)
  usage();
 argv++;
 argc--;
 ret = sysctlbyname(SYSCTL_UNSCRIPT, ((void*)0), ((void*)0), argv[0],
     strlen(argv[0]) + 1);
 if (ret < 0 && errno == EINVAL) {
  errno = ENOENT;
  err(EX_DATAERR, "sysctl: %s", argv[0]);
 } else if (ret < 0)
  err(EX_OSERR, "sysctl: %s", SYSCTL_UNSCRIPT);
}
