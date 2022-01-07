
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd; int vlan_mode; int switch_macaddr; } ;
struct cfg {char* controlfile; TYPE_1__ conf; } ;


 int ETHERSWITCH_CONF_SWITCH_MACADDR ;
 int ETHERSWITCH_CONF_VLAN_MODE ;





 char* ether_ntoa (int *) ;
 int printf (char*,...) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void
print_config(struct cfg *cfg)
{
 const char *c;


 c = strrchr(cfg->controlfile, '/');
 if (c != ((void*)0))
  c = c + 1;
 else
  c = cfg->controlfile;


 if (cfg->conf.cmd & ETHERSWITCH_CONF_VLAN_MODE) {
  printf("%s: VLAN mode: ", c);
  switch (cfg->conf.vlan_mode) {
  case 129:
   printf("ISL\n");
   break;
  case 128:
   printf("PORT\n");
   break;
  case 132:
   printf("DOT1Q\n");
   break;
  case 131:
   printf("DOT1Q4K\n");
   break;
  case 130:
   printf("QinQ\n");
   break;
  default:
   printf("none\n");
  }
 }


 if (cfg->conf.cmd & ETHERSWITCH_CONF_SWITCH_MACADDR) {
  printf("%s: Switch MAC address: %s\n",
      c,
      ether_ntoa(&cfg->conf.switch_macaddr));
 }
}
