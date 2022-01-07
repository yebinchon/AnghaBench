
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct in6_addr {int dummy; } ;
struct TYPE_3__ {int count; int objsize; int size; int opheader; } ;
typedef TYPE_1__ ipfw_obj_lheader ;
struct TYPE_4__ {int flags; int plen; int name; int external; int internal; int if_name; int set; } ;
typedef TYPE_2__ ipfw_nptv6_cfg ;
typedef int buf ;


 int APPLY_MASK (int *,struct in6_addr*) ;
 int EX_OSERR ;
 int EX_USAGE ;
 int IP_FW_NPTV6_CREATE ;
 int MAX (int,int) ;
 int NEED1 (char*) ;
 int NPTV6_DYNAMIC_PREFIX ;
 int NPTV6_HAS_EXTPREFIX ;
 int NPTV6_HAS_INTPREFIX ;
 int NPTV6_HAS_PREFIXLEN ;




 scalar_t__ do_set3 (int ,int *,int) ;
 int err (int ,char*) ;
 int errx (int ,char*,...) ;
 int get_token (int ,char*,char*) ;
 int memset (char*,int ,int) ;
 int n2mask (struct in6_addr*,int) ;
 int nptv6_parse_prefix (char*,int *,int*) ;
 int nptv6newcmds ;
 int strlcpy (int ,char const*,int) ;
 int strlen (char*) ;
 int strncpy (int ,char*,int) ;
 int strtol (char*,char**,int) ;
 int warnx (char*,int,int,int) ;

__attribute__((used)) static void
nptv6_create(const char *name, uint8_t set, int ac, char *av[])
{
 char buf[sizeof(ipfw_obj_lheader) + sizeof(ipfw_nptv6_cfg)];
 struct in6_addr mask;
 ipfw_nptv6_cfg *cfg;
 ipfw_obj_lheader *olh;
 int tcmd, flags, plen;
 char *p = "\0";

 plen = 0;
 memset(buf, 0, sizeof(buf));
 olh = (ipfw_obj_lheader *)buf;
 cfg = (ipfw_nptv6_cfg *)(olh + 1);
 cfg->set = set;
 flags = 0;
 while (ac > 0) {
  tcmd = get_token(nptv6newcmds, *av, "option");
  ac--; av++;

  switch (tcmd) {
  case 129:
   NEED1("IPv6 prefix required");
   nptv6_parse_prefix(*av, &cfg->internal, &plen);
   flags |= NPTV6_HAS_INTPREFIX;
   if (plen > 0)
    goto check_prefix;
   ac--; av++;
   break;
  case 130:
   if (flags & NPTV6_HAS_EXTPREFIX)
    errx(EX_USAGE,
        "Only one ext_prefix or ext_if allowed");
   NEED1("IPv6 prefix required");
   nptv6_parse_prefix(*av, &cfg->external, &plen);
   flags |= NPTV6_HAS_EXTPREFIX;
   if (plen > 0)
    goto check_prefix;
   ac--; av++;
   break;
  case 131:
   if (flags & NPTV6_HAS_EXTPREFIX)
    errx(EX_USAGE,
        "Only one ext_prefix or ext_if allowed");
   NEED1("Interface name required");
   if (strlen(*av) >= sizeof(cfg->if_name))
    errx(EX_USAGE, "Invalid interface name");
   flags |= NPTV6_HAS_EXTPREFIX;
   cfg->flags |= NPTV6_DYNAMIC_PREFIX;
   strncpy(cfg->if_name, *av, sizeof(cfg->if_name));
   ac--; av++;
   break;
  case 128:
   NEED1("IPv6 prefix length required");
   plen = strtol(*av, &p, 10);
check_prefix:
   if (*p != '\0' || plen < 8 || plen > 64)
    errx(EX_USAGE, "wrong prefix length: %s", *av);

   if (cfg->plen > 0 && cfg->plen != plen) {
    warnx("Prefix length mismatch (%d vs %d).  "
        "It was extended up to %d",
        cfg->plen, plen, MAX(plen, cfg->plen));
    plen = MAX(plen, cfg->plen);
   }
   cfg->plen = plen;
   flags |= NPTV6_HAS_PREFIXLEN;
   ac--; av++;
   break;
  }
 }


 if ((flags & NPTV6_HAS_INTPREFIX) != NPTV6_HAS_INTPREFIX)
  errx(EX_USAGE, "int_prefix required");
 if ((flags & NPTV6_HAS_EXTPREFIX) != NPTV6_HAS_EXTPREFIX)
  errx(EX_USAGE, "ext_prefix or ext_if required");
 if ((flags & NPTV6_HAS_PREFIXLEN) != NPTV6_HAS_PREFIXLEN)
  errx(EX_USAGE, "prefixlen required");

 n2mask(&mask, cfg->plen);
 APPLY_MASK(&cfg->internal, &mask);
 if ((cfg->flags & NPTV6_DYNAMIC_PREFIX) == 0)
  APPLY_MASK(&cfg->external, &mask);

 olh->count = 1;
 olh->objsize = sizeof(*cfg);
 olh->size = sizeof(buf);
 strlcpy(cfg->name, name, sizeof(cfg->name));
 if (do_set3(IP_FW_NPTV6_CREATE, &olh->opheader, sizeof(buf)) != 0)
  err(EX_OSERR, "nptv6 instance creation failed");
}
