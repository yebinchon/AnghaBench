
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int count; int objsize; int size; int opheader; } ;
typedef TYPE_1__ ipfw_obj_lheader ;
struct TYPE_4__ {int plen6; int name; int flags; int prefix6; int ntlv6; int ntlv4; int set; } ;
typedef TYPE_2__ ipfw_nat64stl_cfg ;
typedef int buf ;


 int AF_INET6 ;
 int EX_OSERR ;
 int EX_USAGE ;
 int IP_FW_NAT64STL_CREATE ;
 int NAT64STL_HAS_PREFIX6 ;
 int NAT64STL_HAS_TABLE4 ;
 int NAT64STL_HAS_TABLE6 ;
 int NAT64_ALLOW_PRIVATE ;
 int NAT64_LOG ;
 int NEED1 (char*) ;







 scalar_t__ do_set3 (int ,int *,int) ;
 int err (int ,char*) ;
 int errx (int ,char*,...) ;
 int get_token (int ,char*,char*) ;
 int inet_pton (int ,char*,int *) ;
 int ipfw_check_nat64prefix (int *,int) ;
 int memset (char*,int ,int) ;
 int nat64newcmds ;
 char* strchr (char*,char) ;
 int strlcpy (int ,char const*,int) ;
 int strtol (char*,int *,int) ;
 int table_fill_ntlv (int *,char*,int ,int) ;

__attribute__((used)) static void
nat64stl_create(const char *name, uint8_t set, int ac, char *av[])
{
 char buf[sizeof(ipfw_obj_lheader) + sizeof(ipfw_nat64stl_cfg)];
 ipfw_nat64stl_cfg *cfg;
 ipfw_obj_lheader *olh;
 int tcmd, flags;
 char *p;

 memset(buf, 0, sizeof(buf));
 olh = (ipfw_obj_lheader *)buf;
 cfg = (ipfw_nat64stl_cfg *)(olh + 1);


 inet_pton(AF_INET6, "64:ff9b::", &cfg->prefix6);
 cfg->plen6 = 96;
 cfg->set = set;
 flags = NAT64STL_HAS_PREFIX6;
 while (ac > 0) {
  tcmd = get_token(nat64newcmds, *av, "option");
  ac--; av++;

  switch (tcmd) {
  case 129:
   NEED1("table name required");
   table_fill_ntlv(&cfg->ntlv4, *av, set, 4);
   flags |= NAT64STL_HAS_TABLE4;
   ac--; av++;
   break;
  case 128:
   NEED1("table name required");
   table_fill_ntlv(&cfg->ntlv6, *av, set, 6);
   flags |= NAT64STL_HAS_TABLE6;
   ac--; av++;
   break;
  case 132:
   NEED1("IPv6 prefix6 required");
   if ((p = strchr(*av, '/')) != ((void*)0))
    *p++ = '\0';
   if (inet_pton(AF_INET6, *av, &cfg->prefix6) != 1)
    errx(EX_USAGE,
        "Bad prefix: %s", *av);
   cfg->plen6 = strtol(p, ((void*)0), 10);
   if (ipfw_check_nat64prefix(&cfg->prefix6,
       cfg->plen6) != 0)
    errx(EX_USAGE,
        "Bad prefix length: %s", p);
   flags |= NAT64STL_HAS_PREFIX6;
   ac--; av++;
   break;
  case 134:
   cfg->flags |= NAT64_LOG;
   break;
  case 133:
   cfg->flags &= ~NAT64_LOG;
   break;
  case 131:
   cfg->flags |= NAT64_ALLOW_PRIVATE;
   break;
  case 130:
   cfg->flags &= ~NAT64_ALLOW_PRIVATE;
   break;
  }
 }


 if ((flags & NAT64STL_HAS_TABLE4) != NAT64STL_HAS_TABLE4)
  errx(EX_USAGE, "table4 required");
 if ((flags & NAT64STL_HAS_TABLE6) != NAT64STL_HAS_TABLE6)
  errx(EX_USAGE, "table6 required");
 if ((flags & NAT64STL_HAS_PREFIX6) != NAT64STL_HAS_PREFIX6)
  errx(EX_USAGE, "prefix6 required");

 olh->count = 1;
 olh->objsize = sizeof(*cfg);
 olh->size = sizeof(buf);
 strlcpy(cfg->name, name, sizeof(cfg->name));
 if (do_set3(IP_FW_NAT64STL_CREATE, &olh->opheader, sizeof(buf)) != 0)
  err(EX_OSERR, "nat64stl instance creation failed");
}
