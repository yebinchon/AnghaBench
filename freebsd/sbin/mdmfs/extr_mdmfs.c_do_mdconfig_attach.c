
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum md_types { ____Placeholder_md_types } md_types ;





 int abort () ;
 int errx (int,char*,int ,int ) ;
 int mdname ;
 int path_mdconfig ;
 int run (int *,char*,int ,char const*,char const*,int ,int ) ;
 int run_exitnumber (int) ;
 int run_exitstr (int) ;
 int unit ;

__attribute__((used)) static void
do_mdconfig_attach(const char *args, const enum md_types mdtype)
{
 int rv;
 const char *ta;

 switch (mdtype) {
 case 129:
  ta = "-t swap";
  break;
 case 128:
  ta = "-t vnode";
  break;
 case 130:
  ta = "-t malloc";
  break;
 default:
  abort();
 }
 rv = run(((void*)0), "%s -a %s%s -u %s%d", path_mdconfig, ta, args,
     mdname, unit);
 if (rv)
  errx(1, "mdconfig (attach) exited %s %d", run_exitstr(rv),
      run_exitnumber(rv));
}
