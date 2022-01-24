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
struct archive {int /*<<< orphan*/  vtable; int /*<<< orphan*/  state; int /*<<< orphan*/  magic; } ;
struct TYPE_2__ {int /*<<< orphan*/  first; int /*<<< orphan*/ * last; } ;
struct archive_read {struct archive archive; TYPE_1__ passphrases; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_READ_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int,int) ; 

struct archive *
FUNC3(void)
{
	struct archive_read *a;

	a = (struct archive_read *)FUNC2(1, sizeof(*a));
	if (a == NULL)
		return (NULL);
	a->archive.magic = ARCHIVE_READ_MAGIC;

	a->archive.state = ARCHIVE_STATE_NEW;
	a->entry = FUNC0(&a->archive);
	a->archive.vtable = FUNC1();

	a->passphrases.last = &a->passphrases.first;

	return (&a->archive);
}