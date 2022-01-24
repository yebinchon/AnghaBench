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
struct stat {int dummy; } ;
struct sshkey {int dummy; } ;
struct passwd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RP_ALLOW_STDIN ; 
 int SSH_ERR_KEY_WRONG_PASSPHRASE ; 
 int /*<<< orphan*/  FUNC0 (struct passwd*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  have_identity ; 
 int /*<<< orphan*/  identity_file ; 
 scalar_t__ identity_new_passphrase ; 
 scalar_t__ identity_passphrase ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  new_format_cipher ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rounds ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct sshkey*) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,struct sshkey**,char**) ; 
 int FUNC12 (struct sshkey*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,struct stat*) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  use_new_format ; 
 char* FUNC17 (scalar_t__) ; 

__attribute__((used)) static void
FUNC18(struct passwd *pw)
{
	char *comment;
	char *old_passphrase, *passphrase1, *passphrase2;
	struct stat st;
	struct sshkey *private;
	int r;

	if (!have_identity)
		FUNC0(pw, "Enter file in which the key is");
	if (FUNC13(identity_file, &st) < 0)
		FUNC4("%s: %s", identity_file, FUNC15(errno));
	/* Try to load the file with empty passphrase. */
	r = FUNC11(identity_file, "", &private, &comment);
	if (r == SSH_ERR_KEY_WRONG_PASSPHRASE) {
		if (identity_passphrase)
			old_passphrase = FUNC17(identity_passphrase);
		else
			old_passphrase =
			    FUNC8("Enter old passphrase: ",
			    RP_ALLOW_STDIN);
		r = FUNC11(identity_file, old_passphrase,
		    &private, &comment);
		FUNC3(old_passphrase, FUNC16(old_passphrase));
		FUNC5(old_passphrase);
		if (r != 0)
			goto badkey;
	} else if (r != 0) {
 badkey:
		FUNC4("Failed to load key %s: %s", identity_file, FUNC9(r));
	}
	if (comment)
		FUNC6("Key has comment '%s'\n", comment);

	/* Ask the new passphrase (twice). */
	if (identity_new_passphrase) {
		passphrase1 = FUNC17(identity_new_passphrase);
		passphrase2 = NULL;
	} else {
		passphrase1 =
			FUNC8("Enter new passphrase (empty for no "
			    "passphrase): ", RP_ALLOW_STDIN);
		passphrase2 = FUNC8("Enter same passphrase again: ",
		    RP_ALLOW_STDIN);

		/* Verify that they are the same. */
		if (FUNC14(passphrase1, passphrase2) != 0) {
			FUNC3(passphrase1, FUNC16(passphrase1));
			FUNC3(passphrase2, FUNC16(passphrase2));
			FUNC5(passphrase1);
			FUNC5(passphrase2);
			FUNC7("Pass phrases do not match.  Try again.\n");
			FUNC2(1);
		}
		/* Destroy the other copy. */
		FUNC3(passphrase2, FUNC16(passphrase2));
		FUNC5(passphrase2);
	}

	/* Save the file using the new passphrase. */
	if ((r = FUNC12(private, identity_file, passphrase1,
	    comment, use_new_format, new_format_cipher, rounds)) != 0) {
		FUNC1("Saving key \"%s\" failed: %s.",
		    identity_file, FUNC9(r));
		FUNC3(passphrase1, FUNC16(passphrase1));
		FUNC5(passphrase1);
		FUNC10(private);
		FUNC5(comment);
		FUNC2(1);
	}
	/* Destroy the passphrase and the copy of the key in memory. */
	FUNC3(passphrase1, FUNC16(passphrase1));
	FUNC5(passphrase1);
	FUNC10(private);		 /* Destroys contents */
	FUNC5(comment);

	FUNC7("Your identification has been saved with the new passphrase.\n");
	FUNC2(0);
}