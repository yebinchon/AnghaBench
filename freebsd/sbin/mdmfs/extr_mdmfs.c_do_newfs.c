
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PATH_NEWFS ;
 int errx (int,char*,int ,int ) ;
 int mdname ;
 int run (int *,char*,int ,char const*,int ,int ) ;
 int run_exitnumber (int) ;
 int run_exitstr (int) ;
 int unit ;

__attribute__((used)) static void
do_newfs(const char *args)
{
 int rv;

 rv = run(((void*)0), "%s%s /dev/%s%d", _PATH_NEWFS, args, mdname, unit);
 if (rv)
  errx(1, "newfs exited %s %d", run_exitstr(rv),
      run_exitnumber(rv));
}
