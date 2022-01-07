
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int state_func_t ;


 scalar_t__ ESRCH ;
 int SIGKILL ;
 int _PATH_REROOT ;
 int _PATH_REROOT_INIT ;
 int create_file (int ,void*,size_t) ;
 int emergency (char*,...) ;
 scalar_t__ errno ;
 int execl (int ,int ,char*,int *) ;
 int free (void*) ;
 int init_path_argv0 ;
 int kill (int,int ) ;
 int mount_tmpfs (int ) ;
 int read_file (int ,void**,size_t*) ;
 int revoke_ttys () ;
 int runshutdown () ;
 int single_user ;
 int strerror (scalar_t__) ;

__attribute__((used)) static state_func_t
reroot(void)
{
 void *buf;
 size_t bufsize;
 int error;

 buf = ((void*)0);
 bufsize = 0;

 revoke_ttys();
 runshutdown();






 error = kill(-1, SIGKILL);
 if (error != 0 && errno != ESRCH) {
  emergency("kill(2) failed: %s", strerror(errno));
  goto out;
 }





 error = read_file(init_path_argv0, &buf, &bufsize);
 if (error != 0)
  goto out;
 error = mount_tmpfs(_PATH_REROOT);
 if (error != 0)
  goto out;
 error = create_file(_PATH_REROOT_INIT, buf, bufsize);
 if (error != 0)
  goto out;




 execl(_PATH_REROOT_INIT, _PATH_REROOT_INIT, "-r", ((void*)0));
 emergency("cannot exec %s: %s", _PATH_REROOT_INIT, strerror(errno));

out:
 emergency("reroot failed; going to single user mode");
 free(buf);
 return (state_func_t) single_user;
}
