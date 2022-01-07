
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * command ;
typedef int Char ;


 int ERR_NAME ;
 int ERR_TERMINAL ;
 int SIGHUP ;
 int SIG_IGN ;
 int USE (int **) ;
 int getpid () ;
 scalar_t__ intty ;
 int phup_disabled ;
 scalar_t__ setintr ;
 int signal (int ,int ) ;
 int stderror (int) ;
 int submit (int ) ;

void
donohup(Char **v, struct command *c)
{
    USE(c);
    USE(v);
    if (intty)
 stderror(ERR_NAME | ERR_TERMINAL);
    if (setintr == 0) {
 (void) signal(SIGHUP, SIG_IGN);
 phup_disabled = 1;



    }
}
