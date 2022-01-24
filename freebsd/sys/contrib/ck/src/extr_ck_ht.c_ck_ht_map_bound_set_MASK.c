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
struct ck_ht_map {size_t mask; size_t probe_maximum; size_t* probe_bound; } ;
struct ck_ht_hash {size_t value; } ;
typedef  size_t CK_HT_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t) ; 
 size_t CK_HT_WORD_MAX ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline void
FUNC3(struct ck_ht_map *m,
    struct ck_ht_hash h,
    CK_HT_TYPE n_probes)
{
	CK_HT_TYPE offset = h.value & m->mask;

	if (n_probes > m->probe_maximum)
		FUNC1(&m->probe_maximum, n_probes);

	if (m->probe_bound != NULL && m->probe_bound[offset] < n_probes) {
		if (n_probes >= CK_HT_WORD_MAX)
			n_probes = CK_HT_WORD_MAX;

		FUNC0(&m->probe_bound[offset], n_probes);
		FUNC2();
	}

	return;
}