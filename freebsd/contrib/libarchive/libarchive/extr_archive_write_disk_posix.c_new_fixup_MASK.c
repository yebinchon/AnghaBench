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
struct fixup_entry {int /*<<< orphan*/  name; scalar_t__ fixup; struct fixup_entry* next; } ;
struct archive_write_disk {struct fixup_entry* fixup_list; int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static struct fixup_entry *
FUNC3(struct archive_write_disk *a, const char *pathname)
{
	struct fixup_entry *fe;

	fe = (struct fixup_entry *)FUNC1(1, sizeof(struct fixup_entry));
	if (fe == NULL) {
		FUNC0(&a->archive, ENOMEM,
		    "Can't allocate memory for a fixup");
		return (NULL);
	}
	fe->next = a->fixup_list;
	a->fixup_list = fe;
	fe->fixup = 0;
	fe->name = FUNC2(pathname);
	return (fe);
}