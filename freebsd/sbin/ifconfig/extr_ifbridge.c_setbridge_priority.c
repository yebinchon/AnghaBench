
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ifbrparam {int ifbrp_prio; } ;
struct afswtch {int dummy; } ;
typedef int param ;


 int BRDGSPRI ;
 scalar_t__ do_cmd (int,int ,struct ifbrparam*,int,int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*) ;
 scalar_t__ get_val (char const*,int*) ;

__attribute__((used)) static void
setbridge_priority(const char *arg, int d, int s, const struct afswtch *afp)
{
 struct ifbrparam param;
 u_long val;

 if (get_val(arg, &val) < 0 || (val & ~0xffff) != 0)
  errx(1, "invalid value: %s", arg);

 param.ifbrp_prio = val & 0xffff;

 if (do_cmd(s, BRDGSPRI, &param, sizeof(param), 1) < 0)
  err(1, "BRDGSPRI %s", arg);
}
