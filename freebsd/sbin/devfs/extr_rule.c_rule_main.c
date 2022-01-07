
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {int (* handler ) (int,char**) ;int * name; } ;


 struct cmd* ctbl_rule ;
 int eatonum (int ) ;
 int errx (int,char*,char*) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int in_rsnum ;
 int optarg ;
 int optind ;
 int optreset ;
 int setprogname (char*) ;
 scalar_t__ strcmp (int *,char*) ;
 int stub1 (int,char**) ;
 int usage () ;

int
rule_main(int ac, char **av)
{
 struct cmd *c;
 int ch;

 setprogname("devfs rule");
 optreset = optind = 1;
 while ((ch = getopt(ac, av, "s:")) != -1)
  switch (ch) {
  case 's':
   in_rsnum = eatonum(optarg);
   break;
  default:
   usage();
  }
 ac -= optind;
 av += optind;
 if (ac < 1)
  usage();

 for (c = ctbl_rule; c->name != ((void*)0); ++c)
  if (strcmp(c->name, av[0]) == 0)
   exit((*c->handler)(ac, av));
 errx(1, "unknown command: %s", av[0]);
}
