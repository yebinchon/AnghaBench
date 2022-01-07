
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OSERR ;
 int SYSCTL_SCRIPT ;
 int SYSCTL_SCRIPTS ;
 int ddb_list_scripts (char*) ;
 int err (int ,char*,int ) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ sysctlbyname (int ,int *,int *,char*,scalar_t__) ;
 int usage () ;

void
ddb_script(int argc, char *argv[])
{

 if (argc != 2)
  usage();
 argv++;
 argc--;
 if (strchr(argv[0], '=') != 0) {
  if (sysctlbyname(SYSCTL_SCRIPT, ((void*)0), ((void*)0), argv[0],
      strlen(argv[0]) + 1) < 0)
   err(EX_OSERR, "sysctl: %s", SYSCTL_SCRIPTS);
 } else
  ddb_list_scripts(argv[0]);
}
