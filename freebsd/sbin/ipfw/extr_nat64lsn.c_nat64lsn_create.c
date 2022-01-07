
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
typedef void* uint16_t ;
struct TYPE_3__ {int count; int objsize; int size; int opheader; } ;
typedef TYPE_1__ ipfw_obj_lheader ;
struct TYPE_4__ {int plen6; int plen4; int name; int flags; void* states_chunks; void* st_icmp_ttl; void* st_udp_ttl; void* st_estab_ttl; void* st_close_ttl; void* st_syn_ttl; void* pg_delete_delay; void* nh_delete_delay; void* max_ports; void* jmaxlen; int prefix6; int prefix4; void* set; } ;
typedef TYPE_2__ ipfw_nat64lsn_cfg ;
typedef int buf ;


 int AF_INET ;
 int AF_INET6 ;
 int EX_OSERR ;
 int EX_USAGE ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int IP_FW_NAT64LSN_CREATE ;
 int NAT64LSN_HAS_PREFIX4 ;
 int NAT64LSN_HAS_PREFIX6 ;
 void* NAT64LSN_HOST_AGE ;
 void* NAT64LSN_ICMP_AGE ;
 void* NAT64LSN_JMAXLEN ;
 void* NAT64LSN_MAX_PORTS ;
 void* NAT64LSN_PG_AGE ;
 void* NAT64LSN_TCP_EST_AGE ;
 void* NAT64LSN_TCP_FIN_AGE ;
 void* NAT64LSN_TCP_SYN_AGE ;
 void* NAT64LSN_UDP_AGE ;
 int NAT64_ALLOW_PRIVATE ;
 int NAT64_LOG ;
 int NEED1 (char*) ;
 scalar_t__ do_set3 (int ,int *,int) ;
 int err (int ,char*) ;
 int errx (int ,char*,...) ;
 int get_token (int ,char*,char*) ;
 int inet_pton (int ,char*,int *) ;
 int ipfw_check_nat64prefix (int *,int) ;
 int memset (char**,int ,int) ;
 void* nat64lsn_parse_int (char*,char*) ;
 int nat64lsn_parse_prefix (char*,int ,int *,int*) ;
 int nat64newcmds ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
nat64lsn_create(const char *name, uint8_t set, int ac, char **av)
{
 char buf[sizeof(ipfw_obj_lheader) + sizeof(ipfw_nat64lsn_cfg)];
 ipfw_nat64lsn_cfg *cfg;
 ipfw_obj_lheader *olh;
 int tcmd, flags;
 char *opt;

 memset(&buf, 0, sizeof(buf));
 olh = (ipfw_obj_lheader *)buf;
 cfg = (ipfw_nat64lsn_cfg *)(olh + 1);


 inet_pton(AF_INET6, "64:ff9b::", &cfg->prefix6);
 cfg->plen6 = 96;
 cfg->set = set;
 cfg->max_ports = NAT64LSN_MAX_PORTS;
 cfg->jmaxlen = NAT64LSN_JMAXLEN;
 cfg->nh_delete_delay = NAT64LSN_HOST_AGE;
 cfg->pg_delete_delay = NAT64LSN_PG_AGE;
 cfg->st_syn_ttl = NAT64LSN_TCP_SYN_AGE;
 cfg->st_estab_ttl = NAT64LSN_TCP_EST_AGE;
 cfg->st_close_ttl = NAT64LSN_TCP_FIN_AGE;
 cfg->st_udp_ttl = NAT64LSN_UDP_AGE;
 cfg->st_icmp_ttl = NAT64LSN_ICMP_AGE;
 flags = NAT64LSN_HAS_PREFIX6;
 while (ac > 0) {
  tcmd = get_token(nat64newcmds, *av, "option");
  opt = *av;
  ac--; av++;

  switch (tcmd) {
  case 136:
   NEED1("IPv4 prefix required");
   nat64lsn_parse_prefix(*av, AF_INET, &cfg->prefix4,
       &cfg->plen4);
   flags |= NAT64LSN_HAS_PREFIX4;
   ac--; av++;
   break;
  case 135:
   NEED1("IPv6 prefix required");
   nat64lsn_parse_prefix(*av, AF_INET6, &cfg->prefix6,
       &cfg->plen6);
   if (ipfw_check_nat64prefix(&cfg->prefix6,
       cfg->plen6) != 0 &&
       !IN6_IS_ADDR_UNSPECIFIED(&cfg->prefix6))
    errx(EX_USAGE, "Bad prefix6 %s", *av);

   ac--; av++;
   break;
  case 141:
   NEED1("job queue length required");
   cfg->jmaxlen = nat64lsn_parse_int(*av, opt);
   ac--; av++;
   break;
  case 138:
   NEED1("Max per-user ports required");
   cfg->max_ports = nat64lsn_parse_int(*av, opt);
   ac--; av++;
   break;
  case 143:
   NEED1("host delete delay required");
   cfg->nh_delete_delay = (uint16_t)nat64lsn_parse_int(
       *av, opt);
   ac--; av++;
   break;
  case 137:
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
  case 142:
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
  case 140:
   cfg->flags |= NAT64_LOG;
   break;
  case 139:
   cfg->flags &= ~NAT64_LOG;
   break;
  case 134:
   cfg->flags |= NAT64_ALLOW_PRIVATE;
   break;
  case 133:
   cfg->flags &= ~NAT64_ALLOW_PRIVATE;
   break;
  }
 }


 if ((flags & NAT64LSN_HAS_PREFIX4) != NAT64LSN_HAS_PREFIX4)
  errx(EX_USAGE, "prefix4 required");

 olh->count = 1;
 olh->objsize = sizeof(*cfg);
 olh->size = sizeof(buf);
 strlcpy(cfg->name, name, sizeof(cfg->name));
 if (do_set3(IP_FW_NAT64LSN_CREATE, &olh->opheader, sizeof(buf)) != 0)
  err(EX_OSERR, "nat64lsn instance creation failed");
}
