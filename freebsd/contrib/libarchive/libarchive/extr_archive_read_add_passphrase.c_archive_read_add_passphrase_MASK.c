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
struct archive_read_passphrase {int dummy; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  FUNC0 (struct archive_read*,struct archive_read_passphrase*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct archive_read_passphrase* FUNC3 (struct archive_read*,char const*) ; 

int
FUNC4(struct archive *_a, const char *passphrase)
{
	struct archive_read *a = (struct archive_read *)_a;
	struct archive_read_passphrase *p;

	FUNC1(_a, ARCHIVE_READ_MAGIC, ARCHIVE_STATE_NEW,
		"archive_read_add_passphrase");

	if (passphrase == NULL || passphrase[0] == '\0') {
		FUNC2(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Empty passphrase is unacceptable");
		return (ARCHIVE_FAILED);
	}

	p = FUNC3(a, passphrase);
	if (p == NULL)
		return (ARCHIVE_FATAL);
	FUNC0(a, p);

	return (ARCHIVE_OK);
}