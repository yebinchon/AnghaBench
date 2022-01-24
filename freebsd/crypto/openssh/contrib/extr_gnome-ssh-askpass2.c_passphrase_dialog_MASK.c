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
typedef  scalar_t__ GdkGrabStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GDK_CURRENT_TIME ; 
 scalar_t__ GDK_GRAB_SUCCESS ; 
 int GRAB_TRIES ; 
 int GRAB_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GTK_BUTTONS_OK_CANCEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_MESSAGE_QUESTION ; 
 int GTK_RESPONSE_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_WINDOW_TOPLEVEL ; 
 int /*<<< orphan*/  GTK_WIN_POS_CENTER ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/ * FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC38 (char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ok_dialog ; 
 int /*<<< orphan*/  FUNC39 (char*) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC41 (char*) ; 
 int /*<<< orphan*/  FUNC42 (int) ; 

__attribute__((used)) static int
FUNC43(char *message)
{
	const char *failed;
	char *passphrase, *local;
	int result, grab_tries, grab_server, grab_pointer;
	GtkWidget *parent_window, *dialog, *entry;
	GdkGrabStatus status;

	grab_server = (FUNC19("GNOME_SSH_ASKPASS_GRAB_SERVER") != NULL);
	grab_pointer = (FUNC19("GNOME_SSH_ASKPASS_GRAB_POINTER") != NULL);
	grab_tries = 0;

	/* Create an invisible parent window so that GtkDialog doesn't
	 * complain.  */
	parent_window = FUNC34(GTK_WINDOW_TOPLEVEL);

	dialog = FUNC28(FUNC4(parent_window), 0,
					GTK_MESSAGE_QUESTION,
					GTK_BUTTONS_OK_CANCEL,
					"%s",
					message);

	entry = FUNC25();
	FUNC20(
	    FUNC0(FUNC21(FUNC1(dialog))), entry,
	    FALSE, FALSE, 0);
	FUNC27(FUNC2(entry), FALSE);
	FUNC31(entry);
	FUNC32(entry);

	FUNC37(FUNC4(dialog), "OpenSSH");
	FUNC36 (FUNC4(dialog), GTK_WIN_POS_CENTER);
	FUNC35(FUNC4(dialog), TRUE);

	/* Make <enter> close dialog */
	FUNC23(FUNC1(dialog), GTK_RESPONSE_OK);
	FUNC10(FUNC6(entry), "activate",
			 FUNC5(ok_dialog), dialog);

	FUNC35(FUNC4(dialog), TRUE);

	/* Grab focus */
	FUNC33(dialog);
	if (grab_pointer) {
		for(;;) {
			status = FUNC15(
			    (FUNC30(FUNC3(dialog))), TRUE,
			    0, NULL, NULL, GDK_CURRENT_TIME);
			if (status == GDK_GRAB_SUCCESS)
				break;
			FUNC42(GRAB_WAIT * 1000);
			if (++grab_tries > GRAB_TRIES) {
				failed = "mouse";
				goto nograb;
			}
		}
	}
	for(;;) {
		status = FUNC13(
		    FUNC30(FUNC3(dialog)), FALSE,
		    GDK_CURRENT_TIME);
		if (status == GDK_GRAB_SUCCESS)
			break;
		FUNC42(GRAB_WAIT * 1000);
		if (++grab_tries > GRAB_TRIES) {
			failed = "keyboard";
			goto nograbkb;
		}
	}
	if (grab_server) {
		FUNC18();
	}

	result = FUNC22(FUNC1(dialog));

	/* Ungrab */
	if (grab_server)
		FUNC7(FUNC17());
	if (grab_pointer)
		FUNC16(GDK_CURRENT_TIME);
	FUNC14(GDK_CURRENT_TIME);
	FUNC12();

	/* Report passphrase if user selected OK */
	passphrase = FUNC11(FUNC24(FUNC2(entry)));
	if (result == GTK_RESPONSE_OK) {
		local = FUNC9(passphrase, FUNC41(passphrase),
					   NULL, NULL, NULL);
		if (local != NULL) {
			FUNC39(local);
			FUNC38(local, '\0', FUNC41(local));
			FUNC8(local);
		} else {
			FUNC39(passphrase);
		}
	}
		
	/* Zero passphrase in memory */
	FUNC38(passphrase, '\b', FUNC41(passphrase));
	FUNC26(FUNC2(entry), passphrase);
	FUNC38(passphrase, '\0', FUNC41(passphrase));
	FUNC8(passphrase);
			
	FUNC29(dialog);
	return (result == GTK_RESPONSE_OK ? 0 : -1);

	/* At least one grab failed - ungrab what we got, and report
	   the failure to the user.  Note that XGrabServer() cannot
	   fail.  */
 nograbkb:
	FUNC16(GDK_CURRENT_TIME);
 nograb:
	if (grab_server)
		FUNC7(FUNC17());
	FUNC29(dialog);
	
	FUNC40(parent_window, failed);

	return (-1);
}