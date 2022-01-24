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
struct links_entry {int /*<<< orphan*/  entry; } ;
struct archive_entry_linkresolver {struct archive_entry_linkresolver* buckets; } ;

/* Variables and functions */
 int /*<<< orphan*/  NEXT_ENTRY_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry_linkresolver*) ; 
 struct links_entry* FUNC2 (struct archive_entry_linkresolver*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct archive_entry_linkresolver *res)
{
	struct links_entry *le;

	if (res == NULL)
		return;

	while ((le = FUNC2(res, NEXT_ENTRY_ALL)) != NULL)
		FUNC0(le->entry);
	FUNC1(res->buckets);
	FUNC1(res);
}