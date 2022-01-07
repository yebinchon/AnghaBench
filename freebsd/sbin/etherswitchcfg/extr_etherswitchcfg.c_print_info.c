
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* es_name; int es_nports; int es_nvlangroups; int es_vlan_caps; } ;
struct cfg {char* controlfile; TYPE_1__ info; scalar_t__ verbose; } ;


 int ETHERSWITCH_VLAN_CAPS_BITS ;
 int print_config (struct cfg*) ;
 int print_port (struct cfg*,int) ;
 int print_vlangroup (struct cfg*,int) ;
 int printb (char*,int ,int ) ;
 int printf (char*,...) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void
print_info(struct cfg *cfg)
{
 const char *c;
 int i;

 c = strrchr(cfg->controlfile, '/');
 if (c != ((void*)0))
  c = c + 1;
 else
  c = cfg->controlfile;
 if (cfg->verbose) {
  printf("%s: %s with %d ports and %d VLAN groups\n", c,
      cfg->info.es_name, cfg->info.es_nports,
      cfg->info.es_nvlangroups);
  printf("%s: ", c);
  printb("VLAN capabilities", cfg->info.es_vlan_caps,
      ETHERSWITCH_VLAN_CAPS_BITS);
  printf("\n");
 }
 print_config(cfg);
 for (i=0; i<cfg->info.es_nports; i++) {
  print_port(cfg, i);
 }
 for (i=0; i<cfg->info.es_nvlangroups; i++) {
  print_vlangroup(cfg, i);
 }
}
