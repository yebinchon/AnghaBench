#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int slk_format; TYPE_2__* _slk; } ;
struct TYPE_9__ {int labcnt; scalar_t__ hidden; void* dirty; TYPE_1__* ent; int /*<<< orphan*/  win; int /*<<< orphan*/  attr; } ;
struct TYPE_8__ {void* dirty; int /*<<< orphan*/  form_text; int /*<<< orphan*/  ent_x; scalar_t__ visible; } ;
typedef  TYPE_2__ SLK ;
typedef  TYPE_3__ SCREEN ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int NumLabels ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* TRUE ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwlabel ; 
 int /*<<< orphan*/  hwlabelOnOff ; 
 int /*<<< orphan*/  label_off ; 
 int /*<<< orphan*/  label_on ; 
 int num_labels ; 
 int /*<<< orphan*/  plab_norm ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(SCREEN *sp)
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
		if (numlab > 0 && FUNC5(fmt)) {
#ifdef USE_TERM_DRIVER
		    CallDriver_2(sp, hwlabel, i + 1, slk->ent[i].form_text);
#else
		    if (i < num_labels) {
			FUNC3("plab_norm",
				      FUNC7(plab_norm,
					      i + 1,
					      slk->ent[i].form_text));
		    }
#endif
		} else {
		    if (fmt == 4)
			FUNC9(slk->win);
		    FUNC12(slk->win, FUNC4(fmt) - 1, slk->ent[i].ent_x);
		    (void) FUNC11(slk->win, (int) FUNC0(slk->attr));
		    FUNC10(slk->win, slk->ent[i].form_text);
		    /* if we simulate SLK's, it's looking much more
		       natural to use the current ATTRIBUTE also
		       for the label window */
		    (void) FUNC11(slk->win, (int) FUNC8(FUNC6(sp)));
		}
	    }
	    slk->ent[i].dirty = FALSE;
	}
    }
    slk->dirty = FALSE;

    if (numlab > 0) {
#ifdef USE_TERM_DRIVER
	CallDriver_1(sp, hwlabelOnOff, slk->hidden ? FALSE : TRUE);
#else
	if (slk->hidden) {
	    FUNC3("label_off", label_off);
	} else {
	    FUNC3("label_on", label_on);
	}
#endif
    }
}