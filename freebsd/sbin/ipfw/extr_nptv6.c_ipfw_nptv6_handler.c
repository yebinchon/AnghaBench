
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
 scalar_t__ nptv6_check_name (char const*) ;
 int nptv6_create (char const*,scalar_t__,int,char**) ;
 int nptv6_destroy (char const*,scalar_t__) ;
 int nptv6_destroy_cb ;
 int nptv6_foreach (int ,char const*,scalar_t__,int) ;
 int nptv6_reset_stats (char const*,scalar_t__) ;
 int nptv6_show_cb ;
 int nptv6_stats (char const*,scalar_t__) ;
 int nptv6cmds ;
 int nptv6statscmds ;
 scalar_t__ strcmp (char const*,char*) ;

void
ipfw_nptv6_handler(int ac, char *av[])
{
 const char *name;
 int tcmd;
 uint8_t set;

 if (co.use_set != 0)
  set = co.use_set - 1;
 else
  set = 0;
 ac--; av++;

 NEED1("nptv6 needs instance name");
 name = *av;
 if (nptv6_check_name(name) != 0) {
  if (strcmp(name, "all") == 0) {
   name = ((void*)0);
  } else
   errx(EX_USAGE, "nptv6 instance name %s is invalid",
       name);
 }
 ac--; av++;
 NEED1("nptv6 needs command");

 tcmd = get_token(nptv6cmds, *av, "nptv6 command");
 if (name == ((void*)0) && tcmd != 130 && tcmd != 129)
  errx(EX_USAGE, "nptv6 instance name required");
 switch (tcmd) {
 case 131:
  ac--; av++;
  nptv6_create(name, set, ac, av);
  break;
 case 129:
  nptv6_foreach(nptv6_show_cb, name, set, 1);
  break;
 case 130:
  if (name == ((void*)0))
   nptv6_foreach(nptv6_destroy_cb, ((void*)0), set, 0);
  else
   nptv6_destroy(name, set);
  break;
 case 128:
  ac--; av++;
  if (ac == 0) {
   nptv6_stats(name, set);
   break;
  }
  tcmd = get_token(nptv6statscmds, *av, "stats command");
  if (tcmd == TOK_RESET)
   nptv6_reset_stats(name, set);
 }
}
