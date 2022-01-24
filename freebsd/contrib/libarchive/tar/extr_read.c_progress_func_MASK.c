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
typedef  int uint64_t ;
struct progress_data {struct archive_entry* entry; struct archive* archive; struct bsdtar* bsdtar; } ;
struct bsdtar {scalar_t__ verbose; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int FUNC2 (struct archive*) ; 
 int FUNC3 (struct archive*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(void *cookie)
{
	struct progress_data *progress_data = (struct progress_data *)cookie;
	struct bsdtar *bsdtar = progress_data->bsdtar;
	struct archive *a = progress_data->archive;
	struct archive_entry *entry = progress_data->entry;
	uint64_t comp, uncomp;
	int compression;

	if (!FUNC5())
		return;

	if (bsdtar->verbose)
		FUNC4(stderr, "\n");
	if (a != NULL) {
		comp = FUNC3(a, -1);
		uncomp = FUNC3(a, 0);
		if (comp > uncomp)
			compression = 0;
		else
			compression = (int)((uncomp - comp) * 100 / uncomp);
		FUNC4(stderr,
		    "In: %s bytes, compression %d%%;",
		    FUNC7(comp), compression);
		FUNC4(stderr, "  Out: %d files, %s bytes\n",
		    FUNC2(a), FUNC7(uncomp));
	}
	if (entry != NULL) {
		FUNC6(stderr, "Current: %s",
		    FUNC0(entry));
		FUNC4(stderr, " (%s bytes)\n",
		    FUNC7(FUNC1(entry)));
	}
}