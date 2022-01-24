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
typedef  int /*<<< orphan*/  keyfile ;
typedef  int /*<<< orphan*/  encryptedcore ;
typedef  int /*<<< orphan*/  core ;

/* Variables and functions */
 char* DECRYPTCORE_CRASHDIR ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  PJDLOG_MODE_STD ; 
 int /*<<< orphan*/  PJDLOG_MODE_SYSLOG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char const*,char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,char**,char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (char*,int,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char*,int,char*,char const*,char const*) ; 
 int FUNC14 (char*,char*,int) ; 
 size_t FUNC15 (char const*,int) ; 
 int FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 

int
FUNC18(int argc, char **argv)
{
	char core[PATH_MAX], encryptedcore[PATH_MAX], keyfile[PATH_MAX];
	const char *crashdir, *dumpnr, *privatekey;
	int ch, debug, error, ofd;
	size_t ii;
	bool force, usesyslog;

	error = 1;

	FUNC10(PJDLOG_MODE_STD);
	FUNC12("(decryptcore) ");

	debug = 0;
	*core = '\0';
	crashdir = NULL;
	dumpnr = NULL;
	*encryptedcore = '\0';
	force = false;
	*keyfile = '\0';
	privatekey = NULL;
	usesyslog = false;
	while ((ch = FUNC3(argc, argv, "Lc:d:e:fk:n:p:v")) != -1) {
		switch (ch) {
		case 'L':
			usesyslog = true;
			break;
		case 'c':
			if (FUNC14(core, optarg, sizeof(core)) >= sizeof(core))
				FUNC8(1, "Core file path is too long.");
			break;
		case 'd':
			crashdir = optarg;
			break;
		case 'e':
			if (FUNC14(encryptedcore, optarg,
			    sizeof(encryptedcore)) >= sizeof(encryptedcore)) {
				FUNC8(1, "Encrypted core file path is too long.");
			}
			break;
		case 'f':
			force = true;
			break;
		case 'k':
			if (FUNC14(keyfile, optarg, sizeof(keyfile)) >=
			    sizeof(keyfile)) {
				FUNC8(1, "Key file path is too long.");
			}
			break;
		case 'n':
			dumpnr = optarg;
			break;
		case 'p':
			privatekey = optarg;
			break;
		case 'v':
			debug++;
			break;
		default:
			FUNC17();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc != 0)
		FUNC17();

	/* Verify mutually exclusive options. */
	if ((crashdir != NULL || dumpnr != NULL) &&
	    (*keyfile != '\0' || *encryptedcore != '\0' || *core != '\0')) {
		FUNC17();
	}

	/*
	 * Set key, encryptedcore and core file names using crashdir and dumpnr.
	 */
	if (dumpnr != NULL) {
		for (ii = 0; ii < FUNC15(dumpnr, PATH_MAX); ii++) {
			if (FUNC4((int)dumpnr[ii]) == 0)
				FUNC17();
		}

		if (crashdir == NULL)
			crashdir = DECRYPTCORE_CRASHDIR;
		FUNC0(FUNC13(keyfile, sizeof(keyfile),
		    "%s/key.%s", crashdir, dumpnr) > 0);
		FUNC0(FUNC13(core, sizeof(core),
		    "%s/vmcore.%s", crashdir, dumpnr) > 0);
		FUNC0(FUNC13(encryptedcore, sizeof(encryptedcore),
		    "%s/vmcore_encrypted.%s", crashdir, dumpnr) > 0);
	}

	if (privatekey == NULL || *keyfile == '\0' || *encryptedcore == '\0' ||
	    *core == '\0') {
		FUNC17();
	}

	if (usesyslog)
		FUNC11(PJDLOG_MODE_SYSLOG);
	FUNC6(debug);

	if (force && FUNC16(core) == -1 && errno != ENOENT) {
		FUNC7(LOG_ERR, "Unable to remove old core");
		goto out;
	}
	ofd = FUNC5(core, O_WRONLY | O_CREAT | O_EXCL, 0600);
	if (ofd == -1) {
		FUNC7(LOG_ERR, "Unable to open %s", core);
		goto out;
	}

	if (!FUNC1(ofd, privatekey, keyfile, encryptedcore)) {
		if (FUNC16(core) == -1 && errno != ENOENT)
			FUNC7(LOG_ERR, "Unable to remove core");
		goto out;
	}

	error = 0;
out:
	FUNC9();
	FUNC2(error);
}