
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int Filedes; } ;
struct TYPE_7__ {int caninit; int tabsize; int defaultPalette; void* nocolorvideo; void* labelheight; void* labelwidth; void* numlabels; void* maxcolors; void* maxpairs; int hascolor; int canchange; int initcolor; } ;
struct TYPE_9__ {TYPE_2__* drv; TYPE_1__ info; } ;
struct TYPE_8__ {int (* mode ) (TYPE_3__*,int ,int ) ;} ;
typedef TYPE_3__ TERMINAL_CONTROL_BLOCK ;
typedef TYPE_4__ TERMINAL ;


 int AssertTCB () ;
 int FALSE ;
 int TRUE ;
 scalar_t__ VALID_NUMERIC (void*) ;
 int VALID_STRING (int ) ;
 int _nc_cga_palette ;
 int _nc_hls_palette ;
 int can_change ;
 scalar_t__ exit_ca_mode ;
 scalar_t__ hue_lightness_saturation ;
 void* init_tabs ;
 int initialize_color ;
 scalar_t__ isatty (int ) ;
 void* label_height ;
 void* label_width ;
 void* max_colors ;
 void* max_pairs ;
 void* no_color_video ;
 scalar_t__ non_rev_rmcup ;
 void* num_labels ;
 int * set_a_background ;
 int * set_a_foreground ;
 int * set_background ;
 scalar_t__ set_color_pair ;
 int * set_foreground ;
 int stub1 (TYPE_3__*,int ,int ) ;

__attribute__((used)) static void
drv_init(TERMINAL_CONTROL_BLOCK * TCB)
{
    TERMINAL *trm;

    AssertTCB();

    trm = (TERMINAL *) TCB;

    TCB->info.initcolor = VALID_STRING(initialize_color);
    TCB->info.canchange = can_change;
    TCB->info.hascolor = ((VALID_NUMERIC(max_colors) && VALID_NUMERIC(max_pairs)
      && (((set_foreground != ((void*)0))
    && (set_background != ((void*)0)))
          || ((set_a_foreground != ((void*)0))
       && (set_a_background != ((void*)0)))
          || set_color_pair)) ? TRUE : FALSE);

    TCB->info.caninit = !(exit_ca_mode && non_rev_rmcup);

    TCB->info.maxpairs = VALID_NUMERIC(max_pairs) ? max_pairs : 0;
    TCB->info.maxcolors = VALID_NUMERIC(max_colors) ? max_colors : 0;
    TCB->info.numlabels = VALID_NUMERIC(num_labels) ? num_labels : 0;
    TCB->info.labelwidth = VALID_NUMERIC(label_width) ? label_width : 0;
    TCB->info.labelheight = VALID_NUMERIC(label_height) ? label_height : 0;
    TCB->info.nocolorvideo = VALID_NUMERIC(no_color_video) ? no_color_video
 : 0;
    TCB->info.tabsize = VALID_NUMERIC(init_tabs) ? (int) init_tabs : 8;

    TCB->info.defaultPalette = hue_lightness_saturation ? _nc_hls_palette : _nc_cga_palette;







    if (isatty(trm->Filedes)) {
 TCB->drv->mode(TCB, TRUE, TRUE);
    }
}
