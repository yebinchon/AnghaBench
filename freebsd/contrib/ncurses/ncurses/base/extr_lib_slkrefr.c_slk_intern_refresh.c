
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int slk_format; TYPE_2__* _slk; } ;
struct TYPE_9__ {int labcnt; scalar_t__ hidden; void* dirty; TYPE_1__* ent; int win; int attr; } ;
struct TYPE_8__ {void* dirty; int form_text; int ent_x; scalar_t__ visible; } ;
typedef TYPE_2__ SLK ;
typedef TYPE_3__ SCREEN ;


 scalar_t__ AttrOf (int ) ;
 int CallDriver_1 (TYPE_3__*,int ,void*) ;
 int CallDriver_2 (TYPE_3__*,int ,int,int ) ;
 void* FALSE ;
 int NCURSES_PUTP2 (char*,int ) ;
 int NumLabels ;
 scalar_t__ SLK_LINES (int) ;
 scalar_t__ SLK_STDFMT (int) ;
 int StdScreen (TYPE_3__*) ;
 int TPARM_2 (int ,int,int ) ;
 void* TRUE ;
 scalar_t__ WINDOW_ATTRS (int ) ;
 int hwlabel ;
 int hwlabelOnOff ;
 int label_off ;
 int label_on ;
 int num_labels ;
 int plab_norm ;
 int slk_paint_info (int ) ;
 int waddstr (int ,int ) ;
 int wattrset (int ,int) ;
 int wmove (int ,scalar_t__,int ) ;

__attribute__((used)) static void
slk_intern_refresh(SCREEN *sp)
{
    int i;
    int fmt;
    SLK *slk;
    int numlab;

    if (sp == 0)
 return;

    slk = sp->_slk;
    fmt = sp->slk_format;
    numlab = NumLabels;

    if (slk->hidden)
 return;

    for (i = 0; i < slk->labcnt; i++) {
 if (slk->dirty || slk->ent[i].dirty) {
     if (slk->ent[i].visible) {
  if (numlab > 0 && SLK_STDFMT(fmt)) {



      if (i < num_labels) {
   NCURSES_PUTP2("plab_norm",
          TPARM_2(plab_norm,
           i + 1,
           slk->ent[i].form_text));
      }

  } else {
      if (fmt == 4)
   slk_paint_info(slk->win);
      wmove(slk->win, SLK_LINES(fmt) - 1, slk->ent[i].ent_x);
      (void) wattrset(slk->win, (int) AttrOf(slk->attr));
      waddstr(slk->win, slk->ent[i].form_text);



      (void) wattrset(slk->win, (int) WINDOW_ATTRS(StdScreen(sp)));
  }
     }
     slk->ent[i].dirty = FALSE;
 }
    }
    slk->dirty = FALSE;

    if (numlab > 0) {



 if (slk->hidden) {
     NCURSES_PUTP2("label_off", label_off);
 } else {
     NCURSES_PUTP2("label_on", label_on);
 }

    }
}
