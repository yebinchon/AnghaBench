
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * command ;
typedef int Char ;


 int ERR_NAME ;
 int ERR_TERMINAL ;
 int SIGHUP ;
 int SIG_DFL ;
 int USE (int **) ;
 scalar_t__ intty ;
 scalar_t__ setintr ;
 int sigset_interrupting (int ,int ) ;
 int stderror (int) ;

void
dohup(Char **v, struct command *c)
{
    USE(c);
    USE(v);
    if (intty)
 stderror(ERR_NAME | ERR_TERMINAL);
    if (setintr == 0)
     sigset_interrupting(SIGHUP, SIG_DFL);
}
