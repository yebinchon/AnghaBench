
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scr_usage; int scr_suspend; int scr_split; int scr_screen; int scr_rename; int scr_refresh; int scr_optchange; int * scr_msg; int scr_move; int scr_keyval; int scr_insertln; int scr_fmap; int scr_ex_adjust; int scr_event; int scr_discard; int * scr_reply; int scr_deleteln; int scr_cursor; int scr_clrtoeol; int * scr_child; int * scr_busy; int scr_bell; int scr_baud; int scr_attr; int scr_waddstr; int scr_addstr; } ;
typedef TYPE_1__ GS ;


 int cl_addstr ;
 int cl_attr ;
 int cl_baud ;
 int cl_bell ;
 int cl_clrtoeol ;
 int cl_cursor ;
 int cl_deleteln ;
 int cl_discard ;
 int cl_event ;
 int cl_ex_adjust ;
 int cl_fmap ;
 int cl_insertln ;
 int cl_keyval ;
 int cl_move ;
 int cl_optchange ;
 int cl_refresh ;
 int cl_rename ;
 int cl_screen ;
 int cl_split ;
 int cl_suspend ;
 int cl_usage ;
 int cl_waddstr ;

__attribute__((used)) static void
cl_func_std(GS *gp)
{
 gp->scr_addstr = cl_addstr;
 gp->scr_waddstr = cl_waddstr;
 gp->scr_attr = cl_attr;
 gp->scr_baud = cl_baud;
 gp->scr_bell = cl_bell;
 gp->scr_busy = ((void*)0);
 gp->scr_child = ((void*)0);
 gp->scr_clrtoeol = cl_clrtoeol;
 gp->scr_cursor = cl_cursor;
 gp->scr_deleteln = cl_deleteln;
 gp->scr_reply = ((void*)0);
 gp->scr_discard = cl_discard;
 gp->scr_event = cl_event;
 gp->scr_ex_adjust = cl_ex_adjust;
 gp->scr_fmap = cl_fmap;
 gp->scr_insertln = cl_insertln;
 gp->scr_keyval = cl_keyval;
 gp->scr_move = cl_move;
 gp->scr_msg = ((void*)0);
 gp->scr_optchange = cl_optchange;
 gp->scr_refresh = cl_refresh;
 gp->scr_rename = cl_rename;
 gp->scr_screen = cl_screen;
 gp->scr_split = cl_split;
 gp->scr_suspend = cl_suspend;
 gp->scr_usage = cl_usage;
}
