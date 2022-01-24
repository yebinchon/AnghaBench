#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_7__ {int ta_fgcolor; int ta_bgcolor; } ;
typedef  TYPE_1__ teken_attr_t ;
typedef  int /*<<< orphan*/  env ;
struct TYPE_9__ {char c; TYPE_1__ a; } ;
struct TYPE_8__ {int tp_row; int tp_col; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_VOLATILE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int TEXT_COLS ; 
 int TEXT_ROWS ; 
 int VGA_AC_MC_BI ; 
 int VGA_AC_MC_ELG ; 
 int /*<<< orphan*/  VGA_AC_MODE_CONTROL ; 
 int /*<<< orphan*/  VGA_GEN_MISC_OUTPUT_R ; 
 int VGA_GEN_MO_IOA ; 
 scalar_t__ VGA_MEM_BASE ; 
 scalar_t__ VGA_MEM_SIZE ; 
 int /*<<< orphan*/  VGA_REG_BASE ; 
 scalar_t__ VGA_TXT_BASE ; 
 TYPE_5__* buffer ; 
 int /*<<< orphan*/  env_nounset ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 int /*<<< orphan*/  teken ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  tf ; 
 TYPE_2__ tp ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * vgatext ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  vidc_set_colors ; 
 int vidc_started ; 

__attribute__((used)) static int
FUNC13(int arg)
{
	const teken_attr_t *a;
	int val;
	char env[8];

	if (vidc_started && arg == 0)
		return (0);

	vidc_started = 1;

	/*
	 * Check Miscellaneous Output Register (Read at 3CCh, Write at 3C2h)
	 * for bit 1 (Input/Output Address Select), which means
	 * color/graphics adapter.
	 */
	if (FUNC9(VGA_REG_BASE, VGA_GEN_MISC_OUTPUT_R) & VGA_GEN_MO_IOA)
		vgatext = (uint16_t *)FUNC0(VGA_TXT_BASE);
	else
		vgatext = (uint16_t *)FUNC0(VGA_MEM_BASE + VGA_MEM_SIZE);

        /* set 16bit colors */
        val = FUNC8(VGA_REG_BASE, VGA_AC_MODE_CONTROL);
        val &= ~VGA_AC_MC_BI;
        val &= ~VGA_AC_MC_ELG;
        FUNC10(VGA_REG_BASE, VGA_AC_MODE_CONTROL, val);

	tp.tp_row = TEXT_ROWS;
	tp.tp_col = TEXT_COLS;
	buffer = FUNC2(tp.tp_row * tp.tp_col * sizeof(*buffer));
	if (buffer == NULL)
		return (1);

	FUNC4(env, sizeof (env), "%u", tp.tp_row);
	FUNC3("LINES", env, 1);
	FUNC4(env, sizeof (env), "%u", tp.tp_col);
	FUNC3("COLUMNS", env, 1);

	FUNC6(&teken, &tf, NULL);
	FUNC7(&teken, &tp);
	a = FUNC5(&teken);

	FUNC4(env, sizeof(env), "%d", a->ta_fgcolor);
	FUNC1("teken.fg_color", EV_VOLATILE, env, vidc_set_colors,
	    env_nounset);
	FUNC4(env, sizeof(env), "%d", a->ta_bgcolor);
	FUNC1("teken.bg_color", EV_VOLATILE, env, vidc_set_colors,
	    env_nounset);

	for (int row = 0; row < tp.tp_row; row++)
		for (int col = 0; col < tp.tp_col; col++) {
			buffer[col + row * tp.tp_col].c = ' ';
			buffer[col + row * tp.tp_col].a = *a;
		}

	for (int i = 0; i < 10 && FUNC12(); i++)
		(void) FUNC11();

	return (0);	/* XXX reinit? */
}