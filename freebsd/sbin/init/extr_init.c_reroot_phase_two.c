
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int state_func_t ;
typedef int init_path ;


 int KENV_GET ;
 int PATH_MAX ;
 int RB_REROOT ;
 int emergency (char*,...) ;
 int errno ;
 int execl (char*,char*,int *) ;
 int kenv (int ,char*,char*,int) ;
 int reboot (int ) ;
 int single_user ;
 int strerror (int ) ;
 char* strsep (char**,char*) ;
 int sysctlbyname (char*,char*,size_t*,int *,int ) ;

__attribute__((used)) static state_func_t
reroot_phase_two(void)
{
 char init_path[PATH_MAX], *path, *path_component;
 size_t init_path_len;
 int nbytes, error;




 error = reboot(RB_REROOT);
 if (error != 0) {
  emergency("RB_REBOOT failed: %s", strerror(errno));
  goto out;
 }
 nbytes = kenv(KENV_GET, "init_path", init_path, sizeof(init_path));
 if (nbytes <= 0) {
  init_path_len = sizeof(init_path);
  error = sysctlbyname("kern.init_path",
      init_path, &init_path_len, ((void*)0), 0);
  if (error != 0) {
   emergency("failed to retrieve kern.init_path: %s",
       strerror(errno));
   goto out;
  }
 }




 path_component = init_path;
 while ((path = strsep(&path_component, ":")) != ((void*)0)) {



  execl(path, path, ((void*)0));
 }
 emergency("cannot exec init from %s: %s", init_path, strerror(errno));

out:
 emergency("reroot failed; going to single user mode");
 return (state_func_t) single_user;
}
