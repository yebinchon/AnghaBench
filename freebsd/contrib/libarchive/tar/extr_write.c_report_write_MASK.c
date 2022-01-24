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
struct bsdtar {scalar_t__ verbose; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int FUNC2 (struct archive*) ; 
 int FUNC3 (struct archive*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(struct bsdtar *bsdtar, struct archive *a,
    struct archive_entry *entry, int64_t progress)
{
	uint64_t comp, uncomp;
	int compression;

	if (bsdtar->verbose)
		FUNC4(stderr, "\n");
	comp = FUNC3(a, -1);
	uncomp = FUNC3(a, 0);
	FUNC4(stderr, "In: %d files, %s bytes;",
	    FUNC2(a), FUNC6(uncomp));
	if (comp >= uncomp)
		compression = 0;
	else
		compression = (int)((uncomp - comp) * 100 / uncomp);
	FUNC4(stderr,
	    " Out: %s bytes, compression %d%%\n",
	    FUNC6(comp), compression);
	/* Can't have two calls to tar_i64toa() pending, so split the output. */
	FUNC5(stderr, "Current: %s (%s",
	    FUNC0(entry),
	    FUNC6(progress));
	FUNC4(stderr, "/%s bytes)\n",
	    FUNC6(FUNC1(entry)));
}