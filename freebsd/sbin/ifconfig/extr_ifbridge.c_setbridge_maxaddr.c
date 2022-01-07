
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ifbrparam {int ifbrp_csize; } ;
struct afswtch {int dummy; } ;
typedef int param ;


 int BRDGSCACHE ;
 scalar_t__ do_cmd (int,int ,struct ifbrparam*,int,int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*) ;
 scalar_t__ get_val (char const*,int*) ;

__attribute__((used)) static void
setbridge_maxaddr(const char *arg, int d, int s, const struct afswtch *afp)
{
 struct ifbrparam param;
 u_long val;

 if (get_val(arg, &val) < 0 || (val & ~0xffffffff) != 0)
  errx(1, "invalid value: %s", arg);

 param.ifbrp_csize = val & 0xffffffff;

 if (do_cmd(s, BRDGSCACHE, &param, sizeof(param), 1) < 0)
  err(1, "BRDGSCACHE %s", arg);
}
