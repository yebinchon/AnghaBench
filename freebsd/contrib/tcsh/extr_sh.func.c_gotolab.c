
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; scalar_t__ f_seek; } ;
struct whyle {TYPE_1__ w_end; struct whyle* w_next; } ;
typedef int Char ;


 scalar_t__ TCSH_F_SEEK ;
 int TC_BREAK ;
 int TC_GOTO ;
 int bseek (TYPE_1__*) ;
 int btell (TYPE_1__*) ;
 int search (int ,int ,int *) ;
 int wfree () ;
 struct whyle* whyles ;
 int zlast ;

void
gotolab(Char *lab)
{
    struct whyle *wp;




    zlast = TC_GOTO;
    for (wp = whyles; wp; wp = wp->w_next)
 if (wp->w_end.type == TCSH_F_SEEK && wp->w_end.f_seek == 0) {
     search(TC_BREAK, 0, ((void*)0));
     btell(&wp->w_end);
 }
 else {
     bseek(&wp->w_end);
 }
    search(TC_GOTO, 0, lab);



    wfree();
}
