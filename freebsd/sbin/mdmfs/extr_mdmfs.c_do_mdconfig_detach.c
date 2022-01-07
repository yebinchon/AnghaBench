
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ debug ;
 int mdname ;
 int path_mdconfig ;
 int run (int *,char*,int ,int ,int ) ;
 int run_exitnumber (int) ;
 int run_exitstr (int) ;
 int unit ;
 int warnx (char*,int ,int ) ;

__attribute__((used)) static void
do_mdconfig_detach(void)
{
 int rv;

 rv = run(((void*)0), "%s -d -u %s%d", path_mdconfig, mdname, unit);
 if (rv && debug)
  warnx("mdconfig (detach) exited %s %d (ignored)",
      run_exitstr(rv), run_exitnumber(rv));
}
