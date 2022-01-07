
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENPAM_VERIFY_MODULE_FILE ;
 int PAM_LOG_ERROR ;
 int PAM_LOG_LIBDEBUG ;
 int RTLD_NOW ;
 int dlerror () ;
 void* dlopen (char const*,int ) ;
 scalar_t__ errno ;
 scalar_t__ openpam_check_path_owner_perms (char const*) ;
 int openpam_get_feature (int ,int*) ;
 int openpam_log (int ,char*,char const*,...) ;

__attribute__((used)) static void *
try_dlopen(const char *modfn)
{
 int check_module_file;
 void *dlh;

 openpam_log(PAM_LOG_LIBDEBUG, "dlopen(%s)", modfn);
 openpam_get_feature(OPENPAM_VERIFY_MODULE_FILE,
     &check_module_file);
 if (check_module_file &&
     openpam_check_path_owner_perms(modfn) != 0)
  return (((void*)0));
 if ((dlh = dlopen(modfn, RTLD_NOW)) == ((void*)0)) {
  openpam_log(PAM_LOG_ERROR, "%s: %s", modfn, dlerror());
  errno = 0;
  return (((void*)0));
 }
 return (dlh);
}
