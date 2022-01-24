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
struct ck_ht_map {size_t mask; int /*<<< orphan*/  probe_maximum; int /*<<< orphan*/ * probe_bound; } ;
struct ck_ht_hash {size_t value; } ;
typedef  size_t CK_HT_TYPE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 size_t CK_HT_WORD_MAX ; 

__attribute__((used)) static inline CK_HT_TYPE
FUNC2(struct ck_ht_map *m, struct ck_ht_hash h)
{
	CK_HT_TYPE offset = h.value & m->mask;
	CK_HT_TYPE r = CK_HT_WORD_MAX;

	if (m->probe_bound != NULL) {
		r = FUNC0(&m->probe_bound[offset]);
		if (r == CK_HT_WORD_MAX)
			r = FUNC1(&m->probe_maximum);
	} else {
		r = FUNC1(&m->probe_maximum);
	}

	return r;
}