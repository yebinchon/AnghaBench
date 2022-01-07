
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int blue; int green; int red; } ;
typedef TYPE_1__ color_t ;
struct TYPE_4__ {TYPE_1__* defaultPalette; } ;
typedef int TERMINAL_CONTROL_BLOCK ;
typedef int SCREEN ;


 int AssertTCB () ;
 scalar_t__ InPalette (int) ;
 TYPE_2__ InfoOf (int *) ;
 int NCURSES_PUTP2 (char*,int ) ;
 int SetSP () ;
 int TPARM_7 (int *,int,int ,int ,int ,int ,int ,int ) ;
 int TR (int ,char*) ;
 int TRACE_ATTRS ;
 int * initialize_pair ;

__attribute__((used)) static void
drv_initpair(TERMINAL_CONTROL_BLOCK * TCB, int pair, int f, int b)
{
    SCREEN *sp;

    AssertTCB();
    SetSP();

    if ((initialize_pair != ((void*)0)) && InPalette(f) && InPalette(b)) {
 const color_t *tp = InfoOf(sp).defaultPalette;

 TR(TRACE_ATTRS,
    ("initializing pair: pair = %d, fg=(%d,%d,%d), bg=(%d,%d,%d)",
     pair,
     tp[f].red, tp[f].green, tp[f].blue,
     tp[b].red, tp[b].green, tp[b].blue));

 NCURSES_PUTP2("initialize_pair",
        TPARM_7(initialize_pair,
         pair,
         tp[f].red, tp[f].green, tp[f].blue,
         tp[b].red, tp[b].green, tp[b].blue));
    }
}
