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
struct archive_write {int /*<<< orphan*/  archive; int /*<<< orphan*/ * passphrase; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  ARCHIVE_WRITE_MAGIC ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

int
FUNC4(struct archive *_a, const char *p)
{
	struct archive_write *a = (struct archive_write *)_a;

	FUNC0(_a, ARCHIVE_WRITE_MAGIC, ARCHIVE_STATE_NEW,
		"archive_write_set_passphrase");

	if (p == NULL || p[0] == '\0') {
		FUNC1(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Empty passphrase is unacceptable");
		return (ARCHIVE_FAILED);
	}
	FUNC2(a->passphrase);
	a->passphrase = FUNC3(p);
	if (a->passphrase == NULL) {
		FUNC1(&a->archive, ENOMEM,
		    "Can't allocate data for passphrase");
		return (ARCHIVE_FATAL);
	}
	return (ARCHIVE_OK);
}