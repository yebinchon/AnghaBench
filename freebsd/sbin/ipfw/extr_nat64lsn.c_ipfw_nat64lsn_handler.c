
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ use_set; } ;


 int EX_USAGE ;
 int NEED1 (char*) ;





 TYPE_1__ co ;
 int errx (int ,char*,...) ;
 int get_token (int ,char*,char*) ;
 int ipfw_nat64lsn_list_handler (char const*,scalar_t__,int,char**) ;
 int ipfw_nat64lsn_stats_handler (char const*,scalar_t__,int,char**) ;
 int nat64cmds ;
 scalar_t__ nat64lsn_check_name (char const*) ;
 int nat64lsn_config (char const*,scalar_t__,int,char**) ;
 int nat64lsn_create (char const*,scalar_t__,int,char**) ;
 int nat64lsn_destroy (char const*,scalar_t__) ;
 int nat64lsn_destroy_cb ;
 int nat64lsn_foreach (int ,int *,scalar_t__,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

void
ipfw_nat64lsn_handler(int ac, char *av[])
{
 const char *name;
 int tcmd;
 uint8_t set;

 if (co.use_set != 0)
  set = co.use_set - 1;
 else
  set = 0;
 ac--; av++;

 NEED1("nat64lsn needs instance name");
 name = *av;
 if (nat64lsn_check_name(name) != 0) {
  if (strcmp(name, "all") == 0)
   name = ((void*)0);
  else
   errx(EX_USAGE, "nat64lsn instance name %s is invalid",
       name);
 }
 ac--; av++;
 NEED1("nat64lsn needs command");

 tcmd = get_token(nat64cmds, *av, "nat64lsn command");
 if (name == ((void*)0) && tcmd != 130 && tcmd != 129)
  errx(EX_USAGE, "nat64lsn instance name required");
 switch (tcmd) {
 case 131:
  ac--; av++;
  nat64lsn_create(name, set, ac, av);
  break;
 case 132:
  ac--; av++;
  nat64lsn_config(name, set, ac, av);
  break;
 case 129:
  ac--; av++;
  ipfw_nat64lsn_list_handler(name, set, ac, av);
  break;
 case 130:
  if (name == ((void*)0))
   nat64lsn_foreach(nat64lsn_destroy_cb, ((void*)0), set, 0);
  else
   nat64lsn_destroy(name, set);
  break;
 case 128:
  ac--; av++;
  ipfw_nat64lsn_stats_handler(name, set, ac, av);
 }
}
