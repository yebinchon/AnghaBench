
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ifbrparam {int ifbrp_ctime; } ;
struct afswtch {int dummy; } ;
typedef int param ;


 int BRDGSTO ;
 scalar_t__ do_cmd (int,int ,struct ifbrparam*,int,int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*) ;
 scalar_t__ get_val (char const*,int*) ;

__attribute__((used)) static void
setbridge_timeout(const char *arg, int d, int s, const struct afswtch *afp)
{
 struct ifbrparam param;
 u_long val;

 if (get_val(arg, &val) < 0 || (val & ~0xffffffff) != 0)
  errx(1, "invalid value: %s", arg);

 param.ifbrp_ctime = val & 0xffffffff;

 if (do_cmd(s, BRDGSTO, &param, sizeof(param), 1) < 0)
  err(1, "BRDGSTO %s", arg);
}
