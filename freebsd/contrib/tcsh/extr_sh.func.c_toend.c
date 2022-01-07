
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; scalar_t__ f_seek; } ;
struct TYPE_4__ {TYPE_2__ w_end; } ;


 scalar_t__ TCSH_F_SEEK ;
 int TC_BREAK ;
 int bseek (TYPE_2__*) ;
 int btell (TYPE_2__*) ;
 int search (int ,int ,int *) ;
 int wfree () ;
 TYPE_1__* whyles ;

__attribute__((used)) static void
toend(void)
{
    if (whyles->w_end.type == TCSH_F_SEEK && whyles->w_end.f_seek == 0) {
 search(TC_BREAK, 0, ((void*)0));
 btell(&whyles->w_end);
 whyles->w_end.f_seek--;
    }
    else {
 bseek(&whyles->w_end);
    }
    wfree();
}
