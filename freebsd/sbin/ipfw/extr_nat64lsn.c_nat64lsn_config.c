
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint16_t ;
struct TYPE_3__ {int opheader; int ntlv; } ;
typedef TYPE_1__ ipfw_obj_header ;
struct TYPE_4__ {int flags; int states_chunks; void* st_icmp_ttl; void* st_udp_ttl; void* st_estab_ttl; void* st_close_ttl; void* st_syn_ttl; void* pg_delete_delay; void* nh_delete_delay; void* jmaxlen; void* max_ports; } ;
typedef TYPE_2__ ipfw_nat64lsn_cfg ;
typedef int buf ;


 int EX_OSERR ;
 int EX_USAGE ;
 int IP_FW_NAT64LSN_CONFIG ;
 int NAT64_ALLOW_PRIVATE ;
 int NAT64_LOG ;
 int NEED1 (char*) ;
 scalar_t__ do_get3 (int ,int *,size_t*) ;
 scalar_t__ do_set3 (int ,int *,int) ;
 int err (int ,char*,...) ;
 int errx (int ,char*,...) ;
 int get_token (int ,char*,char*) ;
 int memset (char**,int ,int) ;
 int nat64lsn_fill_ntlv (int *,char const*,int ) ;
 void* nat64lsn_parse_int (char*,char*) ;
 int nat64newcmds ;

__attribute__((used)) static void
nat64lsn_config(const char *name, uint8_t set, int ac, char **av)
{
 char buf[sizeof(ipfw_obj_header) + sizeof(ipfw_nat64lsn_cfg)];
 ipfw_nat64lsn_cfg *cfg;
 ipfw_obj_header *oh;
 size_t sz;
 char *opt;
 int tcmd;

 if (ac == 0)
  errx(EX_USAGE, "config options required");
 memset(&buf, 0, sizeof(buf));
 oh = (ipfw_obj_header *)buf;
 cfg = (ipfw_nat64lsn_cfg *)(oh + 1);
 sz = sizeof(buf);

 nat64lsn_fill_ntlv(&oh->ntlv, name, set);
 if (do_get3(IP_FW_NAT64LSN_CONFIG, &oh->opheader, &sz) != 0)
  err(EX_OSERR, "failed to get config for instance %s", name);

 while (ac > 0) {
  tcmd = get_token(nat64newcmds, *av, "option");
  opt = *av;
  ac--; av++;

  switch (tcmd) {
  case 136:
   NEED1("Max per-user ports required");
   cfg->max_ports = nat64lsn_parse_int(*av, opt);
   ac--; av++;
   break;
  case 139:
   NEED1("job queue length required");
   cfg->jmaxlen = nat64lsn_parse_int(*av, opt);
   ac--; av++;
   break;
  case 141:
   NEED1("host delete delay required");
   cfg->nh_delete_delay = (uint16_t)nat64lsn_parse_int(
       *av, opt);
   ac--; av++;
   break;
  case 135:
   NEED1("portgroup delete delay required");
   cfg->pg_delete_delay = (uint16_t)nat64lsn_parse_int(
       *av, opt);
   ac--; av++;
   break;
  case 129:
   NEED1("tcp syn age required");
   cfg->st_syn_ttl = (uint16_t)nat64lsn_parse_int(
       *av, opt);
   ac--; av++;
   break;
  case 131:
   NEED1("tcp close age required");
   cfg->st_close_ttl = (uint16_t)nat64lsn_parse_int(
       *av, opt);
   ac--; av++;
   break;
  case 130:
   NEED1("tcp est age required");
   cfg->st_estab_ttl = (uint16_t)nat64lsn_parse_int(
       *av, opt);
   ac--; av++;
   break;
  case 128:
   NEED1("udp age required");
   cfg->st_udp_ttl = (uint16_t)nat64lsn_parse_int(
       *av, opt);
   ac--; av++;
   break;
  case 140:
   NEED1("icmp age required");
   cfg->st_icmp_ttl = (uint16_t)nat64lsn_parse_int(
       *av, opt);
   ac--; av++;
   break;
  case 132:
   NEED1("number of chunks required");
   cfg->states_chunks = (uint8_t)nat64lsn_parse_int(
       *av, opt);
   ac--; av++;
   break;
  case 138:
   cfg->flags |= NAT64_LOG;
   break;
  case 137:
   cfg->flags &= ~NAT64_LOG;
   break;
  case 134:
   cfg->flags |= NAT64_ALLOW_PRIVATE;
   break;
  case 133:
   cfg->flags &= ~NAT64_ALLOW_PRIVATE;
   break;
  default:
   errx(EX_USAGE, "Can't change %s option", opt);
  }
 }

 if (do_set3(IP_FW_NAT64LSN_CONFIG, &oh->opheader, sizeof(buf)) != 0)
  err(EX_OSERR, "nat64lsn instance configuration failed");
}
