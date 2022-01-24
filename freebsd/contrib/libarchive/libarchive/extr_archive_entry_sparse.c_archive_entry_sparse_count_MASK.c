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
struct archive_entry {struct ae_sparse* sparse_head; } ;
struct ae_sparse {scalar_t__ offset; scalar_t__ length; struct ae_sparse* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 

int
FUNC2(struct archive_entry *entry)
{
	struct ae_sparse *sp;
	int count = 0;

	for (sp = entry->sparse_head; sp != NULL; sp = sp->next)
		count++;

	/*
	 * Sanity check if this entry is exactly sparse.
	 * If amount of sparse blocks is just one and it indicates the whole
	 * file data, we should remove it and return zero.
	 */
	if (count == 1) {
		sp = entry->sparse_head;
		if (sp->offset == 0 &&
		    sp->length >= FUNC0(entry)) {
			count = 0;
			FUNC1(entry);
		}
	}

	return (count);
}