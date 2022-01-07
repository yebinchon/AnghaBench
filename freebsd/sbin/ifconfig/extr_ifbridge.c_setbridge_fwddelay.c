
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ifbrparam {int ifbrp_fwddelay; } ;
struct afswtch {int dummy; } ;
typedef int param ;


 int BRDGSFD ;
 scalar_t__ do_cmd (int,int ,struct ifbrparam*,int,int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*) ;
 scalar_t__ get_val (char const*,int*) ;

__attribute__((used)) static void
setbridge_fwddelay(const char *arg, int d, int s, const struct afswtch *afp)
{
 struct ifbrparam param;
 u_long val;

 if (get_val(arg, &val) < 0 || (val & ~0xff) != 0)
  errx(1, "invalid value: %s", arg);

 param.ifbrp_fwddelay = val & 0xff;

 if (do_cmd(s, BRDGSFD, &param, sizeof(param), 1) < 0)
  err(1, "BRDGSFD %s", arg);
}
