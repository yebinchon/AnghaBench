#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct sshkey {int dummy; } ;
struct TYPE_5__ {int number_of_password_prompts; int /*<<< orphan*/  batch_mode; } ;
struct TYPE_4__ {char* filename; int agent_fd; scalar_t__ isprivate; scalar_t__ key; scalar_t__ userprovided; } ;
typedef  TYPE_1__ Identity ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  KEY_UNSPEC ; 
#define  SSH_ERR_KEY_WRONG_PASSPHRASE 129 
#define  SSH_ERR_SYSTEM_ERROR 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct sshkey*,char*,char*) ; 
 TYPE_2__ options ; 
 char* FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 
 char* FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,char*,struct sshkey**,char**,int*) ; 
 scalar_t__ FUNC11 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sshkey *
FUNC15(Identity *id)
{
	struct sshkey *private = NULL;
	char prompt[300], *passphrase, *comment;
	int r, perm_ok = 0, quit = 0, i;
	struct stat st;

	if (FUNC11(id->filename, &st) < 0) {
		(id->userprovided ? logit : debug3)("no such identity: %s: %s",
		    id->filename, FUNC12(errno));
		return NULL;
	}
	FUNC8(prompt, sizeof prompt,
	    "Enter passphrase for key '%.100s': ", id->filename);
	for (i = 0; i <= options.number_of_password_prompts; i++) {
		if (i == 0)
			passphrase = "";
		else {
			passphrase = FUNC7(prompt, 0);
			if (*passphrase == '\0') {
				FUNC0("no passphrase given, try next key");
				FUNC3(passphrase);
				break;
			}
		}
		switch ((r = FUNC10(KEY_UNSPEC, id->filename,
		    passphrase, &private, &comment, &perm_ok))) {
		case 0:
			break;
		case SSH_ERR_KEY_WRONG_PASSPHRASE:
			if (options.batch_mode) {
				quit = 1;
				break;
			}
			if (i != 0)
				FUNC0("bad passphrase given, try again...");
			break;
		case SSH_ERR_SYSTEM_ERROR:
			if (errno == ENOENT) {
				FUNC0("Load key \"%s\": %s",
				    id->filename, FUNC9(r));
				quit = 1;
				break;
			}
			/* FALLTHROUGH */
		default:
			FUNC2("Load key \"%s\": %s", id->filename, FUNC9(r));
			quit = 1;
			break;
		}
		if (!quit && private != NULL && id->agent_fd == -1 &&
		    !(id->key && id->isprivate))
			FUNC6(id->filename, private, comment,
			    passphrase);
		if (i > 0)
			FUNC4(passphrase, FUNC13(passphrase));
		FUNC3(comment);
		if (private != NULL || quit)
			break;
	}
	return private;
}