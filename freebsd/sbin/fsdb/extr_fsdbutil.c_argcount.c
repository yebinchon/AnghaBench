
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdtable {int minargc; int maxargc; int helptxt; int cmd; } ;


 int warnx (char*,int ,int,...) ;

int
argcount(struct cmdtable *cmdp, int argc, char *argv[])
{
    if (cmdp->minargc == cmdp->maxargc)
 warnx("command `%s' takes %u arguments, got %u", cmdp->cmd,
     cmdp->minargc-1, argc-1);
    else
 warnx("command `%s' takes from %u to %u arguments",
       cmdp->cmd, cmdp->minargc-1, cmdp->maxargc-1);

    warnx("usage: %s: %s", cmdp->cmd, cmdp->helptxt);
    return 1;
}
