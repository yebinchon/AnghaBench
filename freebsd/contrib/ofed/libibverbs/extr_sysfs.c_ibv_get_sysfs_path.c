
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IBV_SYSFS_PATH_MAX ;
 char* getenv (char*) ;
 scalar_t__ geteuid () ;
 scalar_t__ getuid () ;
 int strlen (char*) ;
 char* strndup (char const*,int ) ;
 char const* sysfs_path ;

const char *ibv_get_sysfs_path(void)
{
 const char *env = ((void*)0);

 if (sysfs_path)
  return sysfs_path;





 if (getuid() == geteuid())
  env = getenv("SYSFS_PATH");

 if (env) {
  int len;
  char *dup;

  sysfs_path = dup = strndup(env, IBV_SYSFS_PATH_MAX);
  len = strlen(dup);
  while (len > 0 && dup[len - 1] == '/') {
   --len;
   dup[len] = '\0';
  }
 } else
  sysfs_path = "/sys";

 return sysfs_path;
}
