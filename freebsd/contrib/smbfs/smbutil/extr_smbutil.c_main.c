
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commands {int flags; int (* fn ) (int,char**) ;} ;


 int CMDFL_NO_KMOD ;
 int EOF ;
 int EX_DATAERR ;
 int errx (int ,char*,char*) ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int help () ;
 struct commands* lookupcmd (char*) ;
 int optind ;
 int optreset ;
 scalar_t__ smb_lib_init () ;
 int stub1 (int,char**) ;
 int verbose ;
 int warnx (char*,int) ;

int
main(int argc, char *argv[])
{
 struct commands *cmd;
 char *cp;
 int opt;






 if (argc < 2)
  help();

 while ((opt = getopt(argc, argv, "hv")) != EOF) {
  switch (opt) {
      case 'h':
   help();

      case 'v':
   verbose = 1;
   break;
      default:
   warnx("invalid option %c", opt);
   help();

  }
 }
 if (optind >= argc)
  help();

 cp = argv[optind];
 cmd = lookupcmd(cp);
 if (cmd == ((void*)0))
  errx(EX_DATAERR, "unknown command %s", cp);

 if ((cmd->flags & CMDFL_NO_KMOD) == 0 && smb_lib_init() != 0)
  exit(1);

 argc -= optind;
 argv += optind;
 optind = optreset = 1;
 return cmd->fn(argc, argv);
}
