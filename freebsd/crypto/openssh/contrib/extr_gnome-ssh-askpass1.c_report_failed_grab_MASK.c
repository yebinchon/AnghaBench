#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GNOME_MESSAGE_BOX_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_WINDOW_POPUP ; 
 int /*<<< orphan*/  GTK_WIN_POS_CENTER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7 (void)
{
	GtkWidget *err;

	err = FUNC4("Could not grab keyboard or mouse.\n"
		"A malicious client may be eavesdropping on your session.",
				    GNOME_MESSAGE_BOX_ERROR, "EXIT", NULL);
	FUNC6(FUNC2(err), GTK_WIN_POS_CENTER);
	FUNC5(FUNC1(err), "type", GTK_WINDOW_POPUP, NULL);

	FUNC3(FUNC0(err));
}