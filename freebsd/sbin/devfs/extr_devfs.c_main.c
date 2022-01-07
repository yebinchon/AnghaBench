
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {int (* handler ) (int,char**) ;int * name; } ;


 int O_RDONLY ;
 char* _PATH_DEV ;
 struct cmd* ctbl_main ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char*) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int mpfd ;
 int open (char const*,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 scalar_t__ strcmp (int *,char*) ;
 int stub1 (int,char**) ;
 int usage () ;

int
main(int ac, char **av)
{
 const char *mountpt;
 struct cmd *c;
 int ch;

 mountpt = ((void*)0);
 while ((ch = getopt(ac, av, "m:")) != -1)
  switch (ch) {
  case 'm':
   mountpt = optarg;
   break;
  default:
   usage();
  }
 ac -= optind;
 av += optind;
 if (ac < 1)
  usage();

 if (mountpt == ((void*)0))
  mountpt = _PATH_DEV;
 mpfd = open(mountpt, O_RDONLY);
 if (mpfd == -1)
  err(1, "open: %s", mountpt);

 for (c = ctbl_main; c->name != ((void*)0); ++c)
  if (strcmp(c->name, av[0]) == 0)
   exit((*c->handler)(ac, av));
 errx(1, "unknown command: %s", av[0]);
}
