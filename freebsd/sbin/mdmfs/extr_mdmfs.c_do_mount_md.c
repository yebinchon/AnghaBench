
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PATH_MOUNT ;
 int errx (int,char*,int ,int ) ;
 int mdname ;
 int mdsuffix ;
 int run (int *,char*,int ,char const*,int ,int ,int ,char const*) ;
 int run_exitnumber (int) ;
 int run_exitstr (int) ;
 int unit ;

__attribute__((used)) static void
do_mount_md(const char *args, const char *mtpoint)
{
 int rv;

 rv = run(((void*)0), "%s%s /dev/%s%d%s %s", _PATH_MOUNT, args,
     mdname, unit, mdsuffix, mtpoint);
 if (rv)
  errx(1, "mount exited %s %d", run_exitstr(rv),
      run_exitnumber(rv));
}
