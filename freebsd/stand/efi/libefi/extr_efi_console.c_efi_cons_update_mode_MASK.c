#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {unsigned int ta_fgcolor; unsigned int ta_bgcolor; } ;
typedef  TYPE_2__ teken_attr_t ;
typedef  int /*<<< orphan*/  env ;
typedef  int UINTN ;
struct TYPE_16__ {char c; TYPE_2__ a; } ;
struct TYPE_15__ {int /*<<< orphan*/  (* SetAttribute ) (TYPE_6__*,int /*<<< orphan*/ ) ;TYPE_1__* Mode; int /*<<< orphan*/  (* QueryMode ) (TYPE_6__*,int /*<<< orphan*/ ,int*,int*) ;} ;
struct TYPE_14__ {int tp_row; int tp_col; } ;
struct TYPE_12__ {int /*<<< orphan*/  Mode; } ;
typedef  int /*<<< orphan*/  EFI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_BGCOLOR ; 
 int /*<<< orphan*/  DEFAULT_FGCOLOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EV_VOLATILE ; 
 int RB_SERIAL ; 
 int /*<<< orphan*/  bg_c ; 
 TYPE_8__* buffer ; 
 TYPE_6__* conout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curx ; 
 int /*<<< orphan*/  cury ; 
 int /*<<< orphan*/  efi_set_colors ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  env_nounset ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fg_c ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_8__* FUNC7 (int) ; 
 int mode ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  teken ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  tf ; 
 TYPE_3__ tp ; 

bool
FUNC16(void)
{
	UINTN cols, rows;
	const teken_attr_t *a;
	EFI_STATUS status;
	char env[8];

	status = conout->QueryMode(conout, conout->Mode->Mode, &cols, &rows);
	if (FUNC0(status)) {
		cols = 80;
		rows = 24;
	}

	/*
	 * When we have serial port listed in ConOut, use pre-teken emulator,
	 * if built with.
	 * The problem is, we can not output text on efi and comconsole when
	 * efi also has comconsole bound. But then again, we need to have
	 * terminal emulator for efi text mode to support the menu.
	 * While teken is too expensive to be used on serial console, the
	 * pre-teken emulator is light enough to be used on serial console.
	 */
	mode = FUNC8();
	if ((mode & RB_SERIAL) == 0) {
		if (buffer != NULL) {
			if (tp.tp_row == rows && tp.tp_col == cols)
				return (true);
			FUNC5(buffer);
		} else {
			FUNC14(&teken, &tf, NULL);
		}

		tp.tp_row = rows;
		tp.tp_col = cols;
		buffer = FUNC7(rows * cols * sizeof(*buffer));
		if (buffer == NULL)
			return (false);

		FUNC15(&teken, &tp);
		a = FUNC13(&teken);

		FUNC10(env, sizeof(env), "%d", a->ta_fgcolor);
		FUNC4("teken.fg_color", EV_VOLATILE, env, efi_set_colors,
		    env_nounset);
		FUNC10(env, sizeof(env), "%d", a->ta_bgcolor);
		FUNC4("teken.bg_color", EV_VOLATILE, env, efi_set_colors,
		    env_nounset);

		for (int row = 0; row < rows; row++) {
			for (int col = 0; col < cols; col++) {
				buffer[col + row * tp.tp_col].c = ' ';
				buffer[col + row * tp.tp_col].a = *a;
			}
		}
	} else {
#ifdef TERM_EMU
		conout->SetAttribute(conout, EFI_TEXT_ATTR(DEFAULT_FGCOLOR,
		    DEFAULT_BGCOLOR));
		end_term();
		get_pos(&curx, &cury);
		curs_move(&curx, &cury, curx, cury);
		fg_c = DEFAULT_FGCOLOR;
		bg_c = DEFAULT_BGCOLOR;
#endif
	}

	FUNC10(env, sizeof (env), "%u", (unsigned)rows);
	FUNC9("LINES", env, 1);
	FUNC10(env, sizeof (env), "%u", (unsigned)cols);
	FUNC9("COLUMNS", env, 1);

	return (true);
}