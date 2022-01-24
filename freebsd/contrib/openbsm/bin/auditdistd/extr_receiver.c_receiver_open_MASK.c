#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int adh_trail_fd; int /*<<< orphan*/  adh_trail_name; int /*<<< orphan*/  adh_directory; int /*<<< orphan*/  adh_trail_dirfd; } ;

/* Variables and functions */
 int ADIST_ERROR_CREATE ; 
 int ADIST_ERROR_INVALID_NAME ; 
 int ADIST_ERROR_OPEN ; 
 int ADIST_ERROR_OPEN_OLD ; 
 int ADIST_ERROR_RENAME ; 
 int ADIST_ERROR_WRONG_ORDER ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_NOFOLLOW ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
#define  TRAIL_IDENTICAL 131 
#define  TRAIL_NEWER 130 
#define  TRAIL_OLDER 129 
#define  TRAIL_RENAMED 128 
 TYPE_1__* adhost ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(const char *filename)
{
	int fd;

	/*
	 * Previous file should be closed by now. Sending OPEN request without
	 * sending CLOSE for the previous file is a sender bug.
	 */
	if (adhost->adh_trail_fd != -1) {
		FUNC6("Sender requested opening file \"%s\" without first closing \"%s\".",
		    filename, adhost->adh_trail_name);
		return (ADIST_ERROR_WRONG_ORDER);
	}

	if (!FUNC11(filename, NULL)) {
		FUNC6("Sender wants to open file \"%s\", which has invalid name.",
		    filename);
		return (ADIST_ERROR_INVALID_NAME);
	}

	switch (FUNC10(filename, adhost->adh_trail_name)) {
	case TRAIL_RENAMED:
		if (!FUNC9(adhost->adh_trail_name)) {
			FUNC6("Terminated trail \"%s/%s\" was unterminated on the sender as \"%s/%s\"?",
			    adhost->adh_directory, adhost->adh_trail_name,
			    adhost->adh_directory, filename);
			return (ADIST_ERROR_INVALID_NAME);
		}
		if (FUNC7(adhost->adh_trail_dirfd, adhost->adh_trail_name,
		    adhost->adh_trail_dirfd, filename) == -1) {
			FUNC5(LOG_ERR,
			    "Unable to rename file \"%s/%s\" to \"%s/%s\"",
			    adhost->adh_directory, adhost->adh_trail_name,
			    adhost->adh_directory, filename);
			FUNC1(errno > 0);
			return (ADIST_ERROR_RENAME);
		}
		FUNC4(1, "Renamed file \"%s/%s\" to \"%s/%s\".",
		    adhost->adh_directory, adhost->adh_trail_name,
		    adhost->adh_directory, filename);
		/* FALLTHROUGH */
	case TRAIL_IDENTICAL:
		/* Opening existing file. */
		fd = FUNC3(adhost->adh_trail_dirfd, filename,
		    O_WRONLY | O_APPEND | O_NOFOLLOW);
		if (fd == -1) {
			FUNC5(LOG_ERR,
			    "Unable to open file \"%s/%s\" for append",
			    adhost->adh_directory, filename);
			FUNC1(errno > 0);
			return (ADIST_ERROR_OPEN);
		}
		FUNC4(1, "Opened file \"%s/%s\".",
		    adhost->adh_directory, filename);
		break;
	case TRAIL_NEWER:
		/* Opening new file. */
		fd = FUNC3(adhost->adh_trail_dirfd, filename,
		    O_WRONLY | O_CREAT | O_EXCL | O_NOFOLLOW, 0600);
		if (fd == -1) {
			FUNC5(LOG_ERR,
			    "Unable to create file \"%s/%s\"",
			    adhost->adh_directory, filename);
			FUNC1(errno > 0);
			return (ADIST_ERROR_CREATE);
		}
		FUNC4(1, "Created file \"%s/%s\".",
		    adhost->adh_directory, filename);
		break;
	case TRAIL_OLDER:
		/* Trying to open old file. */
		FUNC6("Sender wants to open an old file \"%s\".", filename);
		return (ADIST_ERROR_OPEN_OLD);
	default:
		FUNC0("Unknown return value from trail_name_compare().");
	}
	FUNC2(FUNC8(adhost->adh_trail_name, filename,
	    sizeof(adhost->adh_trail_name)) < sizeof(adhost->adh_trail_name));
	adhost->adh_trail_fd = fd;
	return (0);
}