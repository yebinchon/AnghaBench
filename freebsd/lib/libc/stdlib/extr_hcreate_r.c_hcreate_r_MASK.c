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
struct hsearch_data {struct __hsearch* __hsearch; } ;
struct __hsearch {int index_mask; scalar_t__ entries_used; int /*<<< orphan*/  offset_basis; int /*<<< orphan*/ * entries; } ;
typedef  int /*<<< orphan*/  ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct __hsearch*) ; 
 struct __hsearch* FUNC3 (int) ; 

int
FUNC4(size_t nel, struct hsearch_data *htab)
{
	struct __hsearch *hsearch;

	/*
	 * Allocate a hash table object. Ignore the provided hint and start
	 * off with a table of sixteen entries. In most cases this hint is
	 * just a wild guess. Resizing the table dynamically if the use
	 * increases a threshold does not affect the worst-case running time.
	 */
	hsearch = FUNC3(sizeof(*hsearch));
	if (hsearch == NULL)
		return 0;
	hsearch->entries = FUNC1(16, sizeof(ENTRY));
	if (hsearch->entries == NULL) {
		FUNC2(hsearch);
		return 0;
	}

	/*
	 * Pick a random initialization for the FNV-1a hashing. This makes it
	 * hard to come up with a fixed set of keys to force hash collisions.
	 */
	FUNC0(&hsearch->offset_basis, sizeof(hsearch->offset_basis));
	hsearch->index_mask = 0xf;
	hsearch->entries_used = 0;
	htab->__hsearch = hsearch;
	return 1;
}