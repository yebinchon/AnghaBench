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
struct links_entry {size_t hash; scalar_t__ links; struct links_entry* next; TYPE_1__* previous; struct archive_entry* canonical; struct archive_entry* entry; } ;
struct archive_entry_linkresolver {int number_buckets; struct links_entry* spare; int /*<<< orphan*/  number_entries; struct links_entry** buckets; } ;
struct archive_entry {int dummy; } ;
typedef  int int64_t ;
typedef  int dev_t ;
struct TYPE_2__ {struct links_entry* next; } ;

/* Variables and functions */
 int FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct links_entry*) ; 

__attribute__((used)) static struct links_entry *
FUNC4(struct archive_entry_linkresolver *res,
    struct archive_entry *entry)
{
	struct links_entry	*le;
	size_t			 hash, bucket;
	dev_t			 dev;
	int64_t			 ino;

	/* Free a held entry. */
	if (res->spare != NULL) {
		FUNC1(res->spare->canonical);
		FUNC1(res->spare->entry);
		FUNC3(res->spare);
		res->spare = NULL;
	}

	dev = FUNC0(entry);
	ino = FUNC2(entry);
	hash = (size_t)(dev ^ ino);

	/* Try to locate this entry in the links cache. */
	bucket = hash & (res->number_buckets - 1);
	for (le = res->buckets[bucket]; le != NULL; le = le->next) {
		if (le->hash == hash
		    && dev == FUNC0(le->canonical)
		    && ino == FUNC2(le->canonical)) {
			/*
			 * Decrement link count each time and release
			 * the entry if it hits zero.  This saves
			 * memory and is necessary for detecting
			 * missed links.
			 */
			--le->links;
			if (le->links > 0)
				return (le);
			/* Remove it from this hash bucket. */
			if (le->previous != NULL)
				le->previous->next = le->next;
			if (le->next != NULL)
				le->next->previous = le->previous;
			if (res->buckets[bucket] == le)
				res->buckets[bucket] = le->next;
			res->number_entries--;
			/* Defer freeing this entry. */
			res->spare = le;
			return (le);
		}
	}
	return (NULL);
}