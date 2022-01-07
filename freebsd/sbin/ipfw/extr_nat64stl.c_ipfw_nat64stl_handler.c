
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ use_set; } ;


 int EX_USAGE ;
 int NEED1 (char*) ;




 int TOK_RESET ;

 TYPE_1__ co ;
 int errx (int ,char*,...) ;
 int get_token (int ,char*,char*) ;
 int nat64cmds ;
 int nat64statscmds ;
 scalar_t__ nat64stl_check_name (char const*) ;
 int nat64stl_config (char const*,scalar_t__,int,char**) ;
 int nat64stl_create (char const*,scalar_t__,int,char**) ;
 int nat64stl_destroy (char const*,scalar_t__) ;
 int nat64stl_destroy_cb ;
 int nat64stl_foreach (int ,char const*,scalar_t__,int) ;
 int nat64stl_reset_stats (char const*,scalar_t__) ;
 int nat64stl_show_cb ;
 int nat64stl_stats (char const*,scalar_t__) ;
 scalar_t__ strcmp (char const*,char*) ;

void
ipfw_nat64stl_handler(int ac, char *av[])
{
 const char *name;
 int tcmd;
 uint8_t set;

 if (co.use_set != 0)
  set = co.use_set - 1;
 else
  set = 0;
 ac--; av++;

 NEED1("nat64stl needs instance name");
 name = *av;
 if (nat64stl_check_name(name) != 0) {
  if (strcmp(name, "all") == 0)
   name = ((void*)0);
  else
   errx(EX_USAGE, "nat64stl instance name %s is invalid",
       name);
 }
 ac--; av++;
 NEED1("nat64stl needs command");

 tcmd = get_token(nat64cmds, *av, "nat64stl command");
 if (name == ((void*)0) && tcmd != 130 && tcmd != 129)
  errx(EX_USAGE, "nat64stl instance name required");
 switch (tcmd) {
 case 131:
  ac--; av++;
  nat64stl_create(name, set, ac, av);
  break;
 case 132:
  ac--; av++;
  nat64stl_config(name, set, ac, av);
  break;
 case 129:
  nat64stl_foreach(nat64stl_show_cb, name, set, 1);
  break;
 case 130:
  if (name == ((void*)0))
   nat64stl_foreach(nat64stl_destroy_cb, ((void*)0), set, 0);
  else
   nat64stl_destroy(name, set);
  break;
 case 128:
  ac--; av++;
  if (ac == 0) {
   nat64stl_stats(name, set);
   break;
  }
  tcmd = get_token(nat64statscmds, *av, "stats command");
  if (tcmd == TOK_RESET)
   nat64stl_reset_stats(name, set);
 }
}
