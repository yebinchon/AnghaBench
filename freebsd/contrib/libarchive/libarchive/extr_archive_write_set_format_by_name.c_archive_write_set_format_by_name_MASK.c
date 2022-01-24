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
struct archive {int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int (* setter ) (struct archive*) ;int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_STATE_FATAL ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__* names ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct archive*) ; 

int
FUNC3(struct archive *a, const char *name)
{
	int i;

	for (i = 0; names[i].name != NULL; i++) {
		if (FUNC1(name, names[i].name) == 0)
			return ((names[i].setter)(a));
	}

	FUNC0(a, EINVAL, "No such format '%s'", name);
	a->state = ARCHIVE_STATE_FATAL;
	return (ARCHIVE_FATAL);
}