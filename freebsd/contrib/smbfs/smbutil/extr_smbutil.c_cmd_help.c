
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commands {int (* usage ) () ;} ;


 int EX_DATAERR ;
 int errx (int ,char*,char*) ;
 int exit (int ) ;
 int help_usage () ;
 struct commands* lookupcmd (char*) ;
 int stub1 () ;

int
cmd_help(int argc, char *argv[])
{
 struct commands *cmd;
 char *cp;

 if (argc < 2)
  help_usage();
 cp = argv[1];
 cmd = lookupcmd(cp);
 if (cmd == ((void*)0))
  errx(EX_DATAERR, "unknown command %s", cp);
 if (cmd->usage == ((void*)0))
  errx(EX_DATAERR, "no specific help for command %s", cp);
 cmd->usage();
 exit(0);
}
