#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  s; } ;
struct tar {int /*<<< orphan*/  sconv; TYPE_1__ longname; } ;
struct archive_read {int dummy; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 scalar_t__ FUNC0 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct archive_read*,struct tar*,TYPE_1__*,void const*,size_t*) ; 
 int FUNC3 (struct archive_read*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct archive_read*,struct tar*,struct archive_entry*,size_t*) ; 

__attribute__((used)) static int
FUNC5(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const void *h, size_t *unconsumed)
{
	int err;

	err = FUNC2(a, tar, &(tar->longname), h, unconsumed);
	if (err != ARCHIVE_OK)
		return (err);
	/* Read and parse "real" header, then override name. */
	err = FUNC4(a, tar, entry, unconsumed);
	if ((err != ARCHIVE_OK) && (err != ARCHIVE_WARN))
		return (err);
	if (FUNC0(entry, tar->longname.s,
	    FUNC1(&(tar->longname)), tar->sconv) != 0)
		err = FUNC3(a, tar->sconv, "Pathname");
	return (err);
}