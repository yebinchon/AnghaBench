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
struct trail {scalar_t__ tr_magic; char* tr_filename; int tr_filefd; int /*<<< orphan*/  tr_dirname; int /*<<< orphan*/  tr_dirfp; } ;
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRAIL_MAGIC ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC5 (int,struct stat*) ; 
 int FUNC6 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC11 (char*,char const*,int) ; 
 scalar_t__ FUNC12 (struct trail*) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 scalar_t__ FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (struct trail*) ; 
 int FUNC16 (int,char const*,int /*<<< orphan*/ ) ; 

void
FUNC17(struct trail *trail, const char *filename, off_t offset)
{
	struct stat sb;
	int dfd, fd;

	FUNC0(trail->tr_magic == TRAIL_MAGIC);

	FUNC1(FUNC11(trail->tr_filename, filename,
	    sizeof(trail->tr_filename)) < sizeof(trail->tr_filename));
	trail->tr_filefd = -1;

	if (trail->tr_filename[0] == '\0') {
		FUNC0(offset == 0);
		FUNC15(trail);
		return;
	}

	dfd = FUNC4(trail->tr_dirfp);
	FUNC0(dfd >= 0);
again:
	fd = FUNC7(dfd, trail->tr_filename, O_RDONLY);
	if (fd == -1) {
		if (errno == ENOENT &&
		    FUNC14(trail->tr_filename) &&
		    FUNC12(trail)) {
			/* File was renamed. Retry with new name. */
			FUNC8(1,
			   "Trail file was renamed since last connection to \"%s/%s\".",
			   trail->tr_dirname, trail->tr_filename);
			goto again;
		} else if (errno == ENOENT) {
			/* File disappeared. */
			FUNC8(1, "File \"%s/%s\" doesn't exist.",
			    trail->tr_dirname, trail->tr_filename);
		} else {
			FUNC9(LOG_ERR,
			    "Unable to open file \"%s/%s\", skipping",
			    trail->tr_dirname, trail->tr_filename);
		}
		FUNC15(trail);
		return;
	}
	if (FUNC5(fd, &sb) == -1) {
		FUNC9(LOG_ERR,
		    "Unable to stat file \"%s/%s\", skipping",
		    trail->tr_dirname, trail->tr_filename);
		FUNC3(fd);
		FUNC15(trail);
		return;
	}
	if (!FUNC2(sb.st_mode)) {
		FUNC10("File \"%s/%s\" is not a regular file, skipping.",
		    trail->tr_dirname, trail->tr_filename);
		FUNC3(fd);
		FUNC15(trail);
		return;
	}
	/*
	 * We continue sending requested file if:
	 * 1. It is not fully sent yet, or
	 * 2. It is fully sent, but is not terminated, so new data can be
	 *    appended still, or
	 * 3. It is fully sent but file name has changed.
	 *    There are two cases here:
	 *    3a. Sender has crashed and the name has changed from
	 *        .not_terminated to .crash_recovery.
	 *    3b. Sender was disconnected, no new data was added to the file,
	 *        but its name has changed from .not_terminated to terminated
	 *        name.
	 *
	 * Note that we are fine if our .not_terminated or .crash_recovery file
	 * is smaller than the one on the receiver side, as it is possible that
	 * more data was send to the receiver than was safely stored on disk.
	 * We accept .not_terminated only because auditdistd can start before
	 * auditd manage to rename it to .crash_recovery.
	 */
	if (offset < sb.st_size ||
	    (offset >= sb.st_size &&
	     FUNC14(trail->tr_filename)) ||
	    (offset >= sb.st_size && FUNC14(filename) &&
	     !FUNC14(trail->tr_filename))) {
		/* File was not fully send. Let's finish it. */
		if (FUNC6(fd, offset, SEEK_SET) == -1) {
			FUNC9(LOG_ERR,
			    "Unable to move to offset %jd within file \"%s/%s\", skipping",
			    (intmax_t)offset, trail->tr_dirname,
			    trail->tr_filename);
			FUNC3(fd);
			FUNC15(trail);
			return;
		}
		if (!FUNC13(trail->tr_filename)) {
			FUNC8(1,
			    "Restarting file \"%s/%s\" at offset %jd.",
			    trail->tr_dirname, trail->tr_filename,
			    (intmax_t)offset);
		}
		trail->tr_filefd = fd;
		return;
	}
	FUNC3(fd);
	if (offset > sb.st_size) {
		FUNC10("File \"%s/%s\" shrinked, removing it.",
		    trail->tr_dirname, trail->tr_filename);
	} else {
		FUNC8(1, "File \"%s/%s\" is already sent, removing it.",
		    trail->tr_dirname, trail->tr_filename);
	}
	/* Entire file is already sent or it shirnked, we can remove it. */
	if (FUNC16(dfd, trail->tr_filename, 0) == -1) {
		FUNC9(LOG_WARNING, "Unable to remove file \"%s/%s\"",
		    trail->tr_dirname, trail->tr_filename);
	}
	FUNC15(trail);
}