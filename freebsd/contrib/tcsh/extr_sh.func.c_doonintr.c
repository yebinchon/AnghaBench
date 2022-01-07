
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct command {int dummy; } ;
struct TYPE_2__ {scalar_t__ sa_handler; } ;
typedef int Char ;


 int ERR_NAME ;
 int ERR_TERMINAL ;
 int SIGINT ;
 scalar_t__ SIG_DFL ;
 scalar_t__ SIG_IGN ;
 int * STRminus ;
 int * Strsave (int *) ;
 int USE (struct command*) ;
 scalar_t__ eq (int *,int *) ;
 int * gointr ;
 scalar_t__ intty ;
 TYPE_1__ parintr ;
 int queue_pintr ;
 scalar_t__ setintr ;
 int signal (int ,scalar_t__) ;
 int sigset_interrupting (int ,int ) ;
 int stderror (int) ;
 int * strip (int *) ;
 int xfree (int *) ;

void
doonintr(Char **v, struct command *c)
{
    Char *cp;
    Char *vv = v[1];

    USE(c);
    if (parintr.sa_handler == SIG_IGN)
 return;
    if (setintr && intty)
 stderror(ERR_NAME | ERR_TERMINAL);
    cp = gointr;
    gointr = 0;
    xfree(cp);
    if (vv == 0) {
 if (setintr)
     sigset_interrupting(SIGINT, queue_pintr);
 else
     (void) signal(SIGINT, SIG_DFL);
 gointr = 0;
    }
    else if (eq((vv = strip(vv)), STRminus)) {
 (void) signal(SIGINT, SIG_IGN);
 gointr = Strsave(STRminus);
    }
    else {
 gointr = Strsave(vv);
 sigset_interrupting(SIGINT, queue_pintr);
    }
}
