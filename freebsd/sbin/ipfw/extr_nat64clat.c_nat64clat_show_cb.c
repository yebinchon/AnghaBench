
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int plat_buf ;
struct TYPE_4__ {char* name; scalar_t__ set; int clat_plen; int plat_plen; int flags; int plat_prefix; int clat_prefix; } ;
typedef TYPE_1__ ipfw_nat64clat_cfg ;
typedef int clat_buf ;
struct TYPE_5__ {scalar_t__ use_set; } ;


 int AF_INET6 ;
 int ESRCH ;
 int INET6_ADDRSTRLEN ;
 int NAT64_ALLOW_PRIVATE ;
 int NAT64_LOG ;
 TYPE_3__ co ;
 int inet_ntop (int ,int *,char*,int) ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
nat64clat_show_cb(ipfw_nat64clat_cfg *cfg, const char *name, uint8_t set)
{
 char plat_buf[INET6_ADDRSTRLEN], clat_buf[INET6_ADDRSTRLEN];

 if (name != ((void*)0) && strcmp(cfg->name, name) != 0)
  return (ESRCH);

 if (co.use_set != 0 && cfg->set != set)
  return (ESRCH);

 if (co.use_set != 0 || cfg->set != 0)
  printf("set %u ", cfg->set);

 inet_ntop(AF_INET6, &cfg->clat_prefix, clat_buf, sizeof(clat_buf));
 inet_ntop(AF_INET6, &cfg->plat_prefix, plat_buf, sizeof(plat_buf));
 printf("nat64clat %s clat_prefix %s/%u plat_prefix %s/%u",
     cfg->name, clat_buf, cfg->clat_plen, plat_buf, cfg->plat_plen);
 if (cfg->flags & NAT64_LOG)
  printf(" log");
 if (cfg->flags & NAT64_ALLOW_PRIVATE)
  printf(" allow_private");
 printf("\n");
 return (0);
}
