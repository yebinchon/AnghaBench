
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbrparam {int ifbrp_proto; } ;
struct afswtch {int dummy; } ;
typedef int param ;


 int BRDGSPROTO ;
 scalar_t__ do_cmd (int,int ,struct ifbrparam*,int,int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static void
setbridge_protocol(const char *arg, int d, int s, const struct afswtch *afp)
{
 struct ifbrparam param;

 if (strcasecmp(arg, "stp") == 0) {
  param.ifbrp_proto = 0;
 } else if (strcasecmp(arg, "rstp") == 0) {
  param.ifbrp_proto = 2;
 } else {
  errx(1, "unknown stp protocol");
 }

 if (do_cmd(s, BRDGSPROTO, &param, sizeof(param), 1) < 0)
  err(1, "BRDGSPROTO %s", arg);
}
