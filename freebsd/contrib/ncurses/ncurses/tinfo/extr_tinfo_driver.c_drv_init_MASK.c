#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  Filedes; } ;
struct TYPE_7__ {int caninit; int tabsize; int /*<<< orphan*/  defaultPalette; void* nocolorvideo; void* labelheight; void* labelwidth; void* numlabels; void* maxcolors; void* maxpairs; int /*<<< orphan*/  hascolor; int /*<<< orphan*/  canchange; int /*<<< orphan*/  initcolor; } ;
struct TYPE_9__ {TYPE_2__* drv; TYPE_1__ info; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* mode ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ TERMINAL_CONTROL_BLOCK ;
typedef  TYPE_4__ TERMINAL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _nc_cga_palette ; 
 int /*<<< orphan*/  _nc_hls_palette ; 
 int /*<<< orphan*/  can_change ; 
 scalar_t__ exit_ca_mode ; 
 scalar_t__ hue_lightness_saturation ; 
 void* init_tabs ; 
 int /*<<< orphan*/  initialize_color ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* label_height ; 
 void* label_width ; 
 void* max_colors ; 
 void* max_pairs ; 
 void* no_color_video ; 
 scalar_t__ non_rev_rmcup ; 
 void* num_labels ; 
 int /*<<< orphan*/ * set_a_background ; 
 int /*<<< orphan*/ * set_a_foreground ; 
 int /*<<< orphan*/ * set_background ; 
 scalar_t__ set_color_pair ; 
 int /*<<< orphan*/ * set_foreground ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(TERMINAL_CONTROL_BLOCK * TCB)
{
    TERMINAL *trm;

    FUNC0();

    trm = (TERMINAL *) TCB;

    TCB->info.initcolor = FUNC2(initialize_color);
    TCB->info.canchange = can_change;
    TCB->info.hascolor = ((FUNC1(max_colors) && FUNC1(max_pairs)
			   && (((set_foreground != NULL)
				&& (set_background != NULL))
			       || ((set_a_foreground != NULL)
				   && (set_a_background != NULL))
			       || set_color_pair)) ? TRUE : FALSE);

    TCB->info.caninit = !(exit_ca_mode && non_rev_rmcup);

    TCB->info.maxpairs = FUNC1(max_pairs) ? max_pairs : 0;
    TCB->info.maxcolors = FUNC1(max_colors) ? max_colors : 0;
    TCB->info.numlabels = FUNC1(num_labels) ? num_labels : 0;
    TCB->info.labelwidth = FUNC1(label_width) ? label_width : 0;
    TCB->info.labelheight = FUNC1(label_height) ? label_height : 0;
    TCB->info.nocolorvideo = FUNC1(no_color_video) ? no_color_video
	: 0;
    TCB->info.tabsize = FUNC1(init_tabs) ? (int) init_tabs : 8;

    TCB->info.defaultPalette = hue_lightness_saturation ? _nc_hls_palette : _nc_cga_palette;

    /*
     * If an application calls setupterm() rather than initscr() or
     * newterm(), we will not have the def_prog_mode() call in
     * _nc_setupscreen().  Do it now anyway, so we can initialize the
     * baudrate.
     */
    if (FUNC3(trm->Filedes)) {
	TCB->drv->mode(TCB, TRUE, TRUE);
    }
}