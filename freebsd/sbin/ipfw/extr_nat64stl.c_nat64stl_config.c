
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int opheader; int ntlv; } ;
typedef TYPE_1__ ipfw_obj_header ;
struct TYPE_4__ {int flags; int ntlv6; int ntlv4; } ;
typedef TYPE_2__ ipfw_nat64stl_cfg ;
typedef int buf ;


 int EX_OSERR ;
 int EX_USAGE ;
 int IP_FW_NAT64STL_CONFIG ;
 int NAT64_ALLOW_PRIVATE ;
 int NAT64_LOG ;
 int NEED1 (char*) ;






 scalar_t__ do_get3 (int ,int *,size_t*) ;
 scalar_t__ do_set3 (int ,int *,int) ;
 int err (int ,char*,...) ;
 int errx (int ,char*,...) ;
 int get_token (int ,char*,char*) ;
 int memset (char**,int ,int) ;
 int nat64newcmds ;
 int nat64stl_fill_ntlv (int *,char const*,int ) ;
 int table_fill_ntlv (int *,char*,int ,int) ;

__attribute__((used)) static void
nat64stl_config(const char *name, uint8_t set, int ac, char **av)
{
 char buf[sizeof(ipfw_obj_header) + sizeof(ipfw_nat64stl_cfg)];
 ipfw_nat64stl_cfg *cfg;
 ipfw_obj_header *oh;
 char *opt;
 size_t sz;
 int tcmd;

 if (ac == 0)
  errx(EX_USAGE, "config options required");
 memset(&buf, 0, sizeof(buf));
 oh = (ipfw_obj_header *)buf;
 cfg = (ipfw_nat64stl_cfg *)(oh + 1);
 sz = sizeof(buf);

 nat64stl_fill_ntlv(&oh->ntlv, name, set);
 if (do_get3(IP_FW_NAT64STL_CONFIG, &oh->opheader, &sz) != 0)
  err(EX_OSERR, "failed to get config for instance %s", name);

 while (ac > 0) {
  tcmd = get_token(nat64newcmds, *av, "option");
  opt = *av;
  ac--; av++;

  switch (tcmd) {
  case 133:
   cfg->flags |= NAT64_LOG;
   break;
  case 132:
   cfg->flags &= ~NAT64_LOG;
   break;
  case 131:
   cfg->flags |= NAT64_ALLOW_PRIVATE;
   break;
  case 130:
   cfg->flags &= ~NAT64_ALLOW_PRIVATE;
   break;
  default:
   errx(EX_USAGE, "Can't change %s option", opt);
  }
 }

 if (do_set3(IP_FW_NAT64STL_CONFIG, &oh->opheader, sizeof(buf)) != 0)
  err(EX_OSERR, "nat64stl instance configuration failed");
}
