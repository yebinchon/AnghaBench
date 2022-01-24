#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_probe_t ;
struct TYPE_9__ {int /*<<< orphan*/ * dthb_chain; struct TYPE_9__* dthb_next; } ;
typedef  TYPE_1__ dtrace_hashbucket_t ;
struct TYPE_10__ {int dth_mask; scalar_t__ dth_nbuckets; TYPE_1__** dth_tab; } ;
typedef  TYPE_2__ dtrace_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC6(dtrace_hash_t *hash, dtrace_probe_t *probe)
{
	int ndx = FUNC4(hash, probe) & hash->dth_mask;
	dtrace_hashbucket_t *bucket = hash->dth_tab[ndx];

	dtrace_probe_t **prevp = FUNC3(hash, probe);
	dtrace_probe_t **nextp = FUNC2(hash, probe);

	/*
	 * Find the bucket that we're removing this probe from.
	 */
	for (; bucket != NULL; bucket = bucket->dthb_next) {
		if (FUNC1(hash, bucket->dthb_chain, probe))
			break;
	}

	FUNC0(bucket != NULL);

	if (*prevp == NULL) {
		if (*nextp == NULL) {
			/*
			 * The removed probe was the only probe on this
			 * bucket; we need to remove the bucket.
			 */
			dtrace_hashbucket_t *b = hash->dth_tab[ndx];

			FUNC0(bucket->dthb_chain == probe);
			FUNC0(b != NULL);

			if (b == bucket) {
				hash->dth_tab[ndx] = bucket->dthb_next;
			} else {
				while (b->dthb_next != bucket)
					b = b->dthb_next;
				b->dthb_next = bucket->dthb_next;
			}

			FUNC0(hash->dth_nbuckets > 0);
			hash->dth_nbuckets--;
			FUNC5(bucket, sizeof (dtrace_hashbucket_t));
			return;
		}

		bucket->dthb_chain = *nextp;
	} else {
		*(FUNC2(hash, *prevp)) = *nextp;
	}

	if (*nextp != NULL)
		*(FUNC3(hash, *nextp)) = *prevp;
}