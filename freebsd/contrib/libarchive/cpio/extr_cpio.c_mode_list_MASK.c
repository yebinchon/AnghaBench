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
struct cpio {int /*<<< orphan*/  quiet; scalar_t__ verbose; int /*<<< orphan*/  matching; int /*<<< orphan*/  bytes_per_block; int /*<<< orphan*/  filename; int /*<<< orphan*/ * passphrase; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  int int64_t ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int ARCHIVE_OK ; 
 char* FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 int FUNC3 (struct archive*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct archive_entry*) ; 
 int FUNC5 (struct archive*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 struct archive* FUNC8 () ; 
 int FUNC9 (struct archive*,struct archive_entry**) ; 
 scalar_t__ FUNC10 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct archive*,struct cpio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct cpio*,struct archive_entry*) ; 
 int /*<<< orphan*/  passphrase_callback ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC18(struct cpio *cpio)
{
	struct archive *a;
	struct archive_entry *entry;
	int r;

	a = FUNC8();
	if (a == NULL)
		FUNC16(1, 0, "Couldn't allocate archive object");
	FUNC12(a);
	FUNC13(a);
	if (cpio->passphrase != NULL)
		r = FUNC5(a, cpio->passphrase);
	else
		r = FUNC11(a, cpio,
			&passphrase_callback);
	if (r != ARCHIVE_OK)
		FUNC16(1, 0, "%s", FUNC2(a));

	if (FUNC10(a, cpio->filename,
					cpio->bytes_per_block))
		FUNC16(1, FUNC1(a),
		    "%s", FUNC2(a));
	for (;;) {
		r = FUNC9(a, &entry);
		if (r == ARCHIVE_EOF)
			break;
		if (r != ARCHIVE_OK) {
			FUNC16(1, FUNC1(a),
			    "%s", FUNC2(a));
		}
		if (FUNC4(cpio->matching, entry))
			continue;
		if (cpio->verbose)
			FUNC17(cpio, entry);
		else
			FUNC15(stdout, "%s\n", FUNC0(entry));
	}
	r = FUNC6(a);
	if (r != ARCHIVE_OK)
		FUNC16(1, 0, "%s", FUNC2(a));
	if (!cpio->quiet) {
		int64_t blocks = (FUNC3(a, 0) + 511)
			      / 512;
		FUNC15(stderr, "%lu %s\n", (unsigned long)blocks,
		    blocks == 1 ? "block" : "blocks");
	}
	FUNC7(a);
	FUNC14(0);
}