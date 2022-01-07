
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ a_seek; scalar_t__ f_seek; int type; } ;
struct whyle {scalar_t__ w_fename; struct whyle* w_next; TYPE_1__ w_end; int w_start; } ;
struct command {int dummy; } ;
typedef int Char ;


 int ERR_EXPRESSION ;
 int ERR_NAME ;
 scalar_t__ SEEKEQ (int *,int *) ;
 int TCSH_F_SEEK ;
 int TC_WHILE ;
 int USE (struct command*) ;
 int doagain () ;
 int exp0 (int ***,int) ;
 int expr (int ***) ;
 scalar_t__ intty ;
 int lineloc ;
 scalar_t__ noexec ;
 int preread () ;
 int stderror (int) ;
 int toend () ;
 struct whyle* whyles ;
 struct whyle* xcalloc (int,int) ;
 int zlast ;

void
dowhile(Char **v, struct command *c)
{
    int status;
    int again = whyles != 0 &&
     SEEKEQ(&whyles->w_start, &lineloc) &&
     whyles->w_fename == 0;

    USE(c);
    v++;




    if (noexec)
 status = 0;
    else if (intty && !again)
 status = !exp0(&v, 1);
    else
 status = !expr(&v);
    if (*v && !noexec)
 stderror(ERR_NAME | ERR_EXPRESSION);
    if (!again) {
 struct whyle *nwp = xcalloc(1, sizeof(*nwp));

 nwp->w_start = lineloc;
 nwp->w_end.type = TCSH_F_SEEK;
 nwp->w_end.f_seek = 0;
 nwp->w_end.a_seek = 0;
 nwp->w_next = whyles;
 whyles = nwp;
 zlast = TC_WHILE;
 if (intty) {



     preread();
     doagain();
     return;
 }
    }
    if (status)

 toend();
}
