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
struct links_entry {unsigned int links; struct archive_entry* canonical; } ;
struct archive_entry_linkresolver {TYPE_1__* spare; } ;
struct archive_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  entry; int /*<<< orphan*/  canonical; } ;

/* Variables and functions */
 int /*<<< orphan*/  NEXT_ENTRY_PARTIAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct links_entry* FUNC2 (struct archive_entry_linkresolver*,int /*<<< orphan*/ ) ; 

struct archive_entry *
FUNC3(struct archive_entry_linkresolver *res,
    unsigned int *links)
{
	struct archive_entry	*e;
	struct links_entry	*le;

	/* Free a held entry. */
	if (res->spare != NULL) {
		FUNC0(res->spare->canonical);
		FUNC0(res->spare->entry);
		FUNC1(res->spare);
		res->spare = NULL;
	}

	le = FUNC2(res, NEXT_ENTRY_PARTIAL);
	if (le != NULL) {
		e = le->canonical;
		if (links != NULL)
			*links = le->links;
		le->canonical = NULL;
	} else {
		e = NULL;
		if (links != NULL)
			*links = 0;
	}
	return (e);
}