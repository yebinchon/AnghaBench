
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int _nc_bkgd; } ;
typedef int SCREEN ;
typedef int NCURSES_CH_T ;


 int CharEq (int ,int ) ;
 int GetPair (int ) ;
 int SetPair (int ,int ) ;
 int TEXTWIDTH (int *) ;
 scalar_t__ back_color_erase ;
 int blankchar ;
 TYPE_1__* stdscr ;

__attribute__((used)) static int
update_cost_from_blank(SCREEN *sp, NCURSES_CH_T * to)
{
    int cost = 0;
    int i;
    NCURSES_CH_T blank = blankchar;

    if (back_color_erase)
 SetPair(blank, GetPair(stdscr->_nc_bkgd));

    for (i = TEXTWIDTH(sp); i > 0; i--, to++)
 if (!(CharEq(blank, *to)))
     cost++;

    return cost;
}
