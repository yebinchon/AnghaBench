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
struct archive_entry_linkresolver {int number_buckets; int /*<<< orphan*/ * buckets; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry_linkresolver*) ; 
 int links_cache_initial_size ; 

struct archive_entry_linkresolver *
FUNC2(void)
{
	struct archive_entry_linkresolver *res;

	/* Check for positive power-of-two */
	if (links_cache_initial_size == 0 ||
	    (links_cache_initial_size & (links_cache_initial_size - 1)) != 0)
		return (NULL);

	res = FUNC0(1, sizeof(struct archive_entry_linkresolver));
	if (res == NULL)
		return (NULL);
	res->number_buckets = links_cache_initial_size;
	res->buckets = FUNC0(res->number_buckets, sizeof(res->buckets[0]));
	if (res->buckets == NULL) {
		FUNC1(res);
		return (NULL);
	}
	return (res);
}