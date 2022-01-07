
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int NEED1 (char*) ;




 int errx (int ,char*,char*) ;
 int intcmds ;
 int ipfw_list_objects (int,char**) ;
 int ipfw_list_ta (int,char**) ;
 int ipfw_list_tifaces () ;
 int ipfw_list_values (int,char**) ;
 int match_token (int ,char*) ;

void
ipfw_internal_handler(int ac, char *av[])
{
 int tcmd;

 ac--; av++;
 NEED1("internal cmd required");

 if ((tcmd = match_token(intcmds, *av)) == -1)
  errx(EX_USAGE, "invalid internal sub-cmd: %s", *av);

 switch (tcmd) {
 case 131:
  ipfw_list_tifaces();
  break;
 case 129:
  ipfw_list_ta(ac, av);
  break;
 case 130:
  ipfw_list_objects(ac, av);
  break;
 case 128:
  ipfw_list_values(ac, av);
  break;
 }
}
