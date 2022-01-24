#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
struct TYPE_4__ {int ncached_max; } ;
typedef  TYPE_1__ cache_bin_info_t ;
struct TYPE_5__ {int nregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHELINE ; 
 unsigned int NBINS ; 
 int SMALL_MAXCLASS ; 
 int TCACHE_NSLOTS_LARGE ; 
 int TCACHE_NSLOTS_SMALL_MAX ; 
 int TCACHE_NSLOTS_SMALL_MIN ; 
 int /*<<< orphan*/  WITNESS_RANK_TCACHES ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* bin_infos ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  malloc_mutex_rank_exclusive ; 
 int nhbins ; 
 int opt_lg_tcache_max ; 
 scalar_t__ stack_nelms ; 
 int FUNC4 (int) ; 
 TYPE_1__* tcache_bin_info ; 
 int tcache_maxclass ; 
 int /*<<< orphan*/  tcaches_mtx ; 

bool
FUNC5(tsdn_t *tsdn) {
	/* If necessary, clamp opt_lg_tcache_max. */
	if (opt_lg_tcache_max < 0 || (FUNC0(1) << opt_lg_tcache_max) <
	    SMALL_MAXCLASS) {
		tcache_maxclass = SMALL_MAXCLASS;
	} else {
		tcache_maxclass = (FUNC0(1) << opt_lg_tcache_max);
	}

	if (FUNC3(&tcaches_mtx, "tcaches", WITNESS_RANK_TCACHES,
	    malloc_mutex_rank_exclusive)) {
		return true;
	}

	nhbins = FUNC4(tcache_maxclass) + 1;

	/* Initialize tcache_bin_info. */
	tcache_bin_info = (cache_bin_info_t *)FUNC2(tsdn, FUNC1(), nhbins
	    * sizeof(cache_bin_info_t), CACHELINE);
	if (tcache_bin_info == NULL) {
		return true;
	}
	stack_nelms = 0;
	unsigned i;
	for (i = 0; i < NBINS; i++) {
		if ((bin_infos[i].nregs << 1) <= TCACHE_NSLOTS_SMALL_MIN) {
			tcache_bin_info[i].ncached_max =
			    TCACHE_NSLOTS_SMALL_MIN;
		} else if ((bin_infos[i].nregs << 1) <=
		    TCACHE_NSLOTS_SMALL_MAX) {
			tcache_bin_info[i].ncached_max =
			    (bin_infos[i].nregs << 1);
		} else {
			tcache_bin_info[i].ncached_max =
			    TCACHE_NSLOTS_SMALL_MAX;
		}
		stack_nelms += tcache_bin_info[i].ncached_max;
	}
	for (; i < nhbins; i++) {
		tcache_bin_info[i].ncached_max = TCACHE_NSLOTS_LARGE;
		stack_nelms += tcache_bin_info[i].ncached_max;
	}

	return false;
}