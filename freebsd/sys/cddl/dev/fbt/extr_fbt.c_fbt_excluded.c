
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

int
fbt_excluded(const char *name)
{

 if (strncmp(name, "dtrace_", 7) == 0 &&
     strncmp(name, "dtrace_safe_", 12) != 0) {






  return (1);
 }




 if (strcmp(name, "owner_mtx") == 0 ||
     strcmp(name, "owner_rm") == 0 ||
     strcmp(name, "owner_rw") == 0 ||
     strcmp(name, "owner_sx") == 0)
  return (1);






 if (strncmp(name, "fbt_", 4) == 0)
  return (1);


 return (0);
}
