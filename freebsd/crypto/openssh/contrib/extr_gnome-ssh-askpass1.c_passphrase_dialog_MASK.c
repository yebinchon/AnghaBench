#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  vbox; } ;
struct TYPE_19__ {int /*<<< orphan*/  window; } ;
typedef  TYPE_1__ GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GDK_CURRENT_TIME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_7__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  GNOME_PAD ; 
 int /*<<< orphan*/  GNOME_STOCK_BUTTON_CANCEL ; 
 int /*<<< orphan*/  GNOME_STOCK_BUTTON_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  GTK_WINDOW_POPUP ; 
 int /*<<< orphan*/  GTK_WIN_POS_CENTER ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char** FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC20 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC21 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC25 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (char*) ; 
 int /*<<< orphan*/  FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 (char*) ; 

int
FUNC39(char *message)
{
	char *passphrase;
	char **messages;
	int result, i, grab_server, grab_pointer;
	GtkWidget *dialog, *entry, *label;

	grab_server = (FUNC16("GNOME_SSH_ASKPASS_GRAB_SERVER") != NULL);
	grab_pointer = (FUNC16("GNOME_SSH_ASKPASS_GRAB_POINTER") != NULL);

	dialog = FUNC20("OpenSSH", GNOME_STOCK_BUTTON_OK,
	    GNOME_STOCK_BUTTON_CANCEL, NULL);

	messages = FUNC10(message, "\\n", 0);
	if (messages)
		for(i = 0; messages[i]; i++) {
			label = FUNC29(messages[i]);
			FUNC23(FUNC2(FUNC1(dialog)->vbox),
			    label, FALSE, FALSE, 0);
		}

	entry = FUNC26();
	FUNC23(FUNC2(FUNC1(dialog)->vbox), entry, FALSE,
	    FALSE, 0);
	FUNC28(FUNC5(entry), FALSE);
	FUNC31(entry);

	/* Center window and prepare for grab */
	FUNC30(FUNC6(dialog), "type", GTK_WINDOW_POPUP, NULL);
	FUNC22(FUNC1(dialog), 0);
	FUNC34 (FUNC7(dialog), GTK_WIN_POS_CENTER);
	FUNC33(FUNC7(dialog), FALSE, FALSE, TRUE);
	FUNC18(FUNC1(dialog), TRUE);
	FUNC24(FUNC3(FUNC1(dialog)->vbox),
	    GNOME_PAD);
	FUNC32(dialog);

	/* Grab focus */
	if (grab_server)
		FUNC8(FUNC0());
	if (grab_pointer && FUNC14(dialog->window, TRUE, 0,
	    NULL, NULL, GDK_CURRENT_TIME))
		goto nograb;
	if (FUNC12(dialog->window, FALSE, GDK_CURRENT_TIME))
		goto nograbkb;

	/* Make <enter> close dialog */
	FUNC19(FUNC1(dialog), FUNC4(entry));

	/* Run dialog */
	result = FUNC21(FUNC1(dialog));

	/* Ungrab */
	if (grab_server)
		FUNC9(FUNC0());
	if (grab_pointer)
		FUNC15(GDK_CURRENT_TIME);
	FUNC13(GDK_CURRENT_TIME);
	FUNC11();

	/* Report passphrase if user selected OK */
	passphrase = FUNC25(FUNC5(entry));
	if (result == 0)
		FUNC36(passphrase);
		
	/* Zero passphrase in memory */
	FUNC35(passphrase, '\0', FUNC38(passphrase));
	FUNC27(FUNC5(entry), passphrase);
			
	FUNC17(FUNC1(dialog));
	return (result == 0 ? 0 : -1);

	/* At least one grab failed - ungrab what we got, and report
	   the failure to the user.  Note that XGrabServer() cannot
	   fail.  */
 nograbkb:
	FUNC15(GDK_CURRENT_TIME);
 nograb:
	if (grab_server)
		FUNC9(FUNC0());
	FUNC17(FUNC1(dialog));
	
	FUNC37();
	return (-1);
}