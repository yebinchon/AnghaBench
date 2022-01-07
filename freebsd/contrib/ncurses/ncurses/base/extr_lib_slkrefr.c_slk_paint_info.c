
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_7__ {int slk_format; TYPE_2__* _slk; } ;
struct TYPE_6__ {int maxlab; TYPE_1__* ent; } ;
struct TYPE_5__ {int ent_x; } ;
typedef TYPE_3__ SCREEN ;


 TYPE_3__* _nc_screen_of (int *) ;
 int getmaxx (int *) ;
 int mvwhline (int *,int ,int ,int ,int ) ;
 int mvwprintw (int *,int ,int ,char*,int) ;
 int wmove (int *,int ,int ) ;

__attribute__((used)) static void
slk_paint_info(WINDOW *win)
{
    SCREEN *sp = _nc_screen_of(win);

    if (win && sp && (sp->slk_format == 4)) {
 int i;

 (void) mvwhline(win, 0, 0, 0, getmaxx(win));
 wmove(win, 0, 0);

 for (i = 0; i < sp->_slk->maxlab; i++) {
     mvwprintw(win, 0, sp->_slk->ent[i].ent_x, "F%d", i + 1);
 }
    }
}
