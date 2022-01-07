
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PATH_MOUNT ;
 int errx (int,char*,int ,int ) ;
 int run (int *,char*,int ,char const*,char const*) ;
 int run_exitnumber (int) ;
 int run_exitstr (int) ;

__attribute__((used)) static void
do_mount_tmpfs(const char *args, const char *mtpoint)
{
 int rv;

 rv = run(((void*)0), "%s -t tmpfs %s tmp %s", _PATH_MOUNT, args, mtpoint);
 if (rv)
  errx(1, "tmpfs mount exited %s %d", run_exitstr(rv),
      run_exitnumber(rv));
}
