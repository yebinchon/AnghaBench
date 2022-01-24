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
struct TYPE_2__ {int all_filters_applied; scalar_t__ write_ptr; scalar_t__ last_write_ptr; int /*<<< orphan*/  filters; } ;
struct rar5 {TYPE_1__ cstate; } ;
struct filter_info {scalar_t__ block_start; scalar_t__ block_length; } ;
struct archive_read {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int ARCHIVE_RETRY ; 
 scalar_t__ CDE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct filter_info**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct filter_info*) ; 
 struct rar5* FUNC4 (struct archive_read*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_read*,struct rar5*,scalar_t__,scalar_t__) ; 
 int FUNC6 (struct archive_read*,struct filter_info*) ; 

__attribute__((used)) static int FUNC7(struct archive_read* a) {
	struct filter_info* flt;
	struct rar5* rar = FUNC4(a);
	int ret;

	rar->cstate.all_filters_applied = 0;

	/* Get the first filter that can be applied to our data. The data
	 * needs to be fully unpacked before the filter can be run. */
	if(CDE_OK == FUNC1(&rar->cstate.filters,
	    FUNC0(&flt))) {
		/* Check if our unpacked data fully covers this filter's
		 * range. */
		if(rar->cstate.write_ptr > flt->block_start &&
		    rar->cstate.write_ptr >= flt->block_start +
		    flt->block_length) {
			/* Check if we have some data pending to be written
			 * right before the filter's start offset. */
			if(rar->cstate.last_write_ptr == flt->block_start) {
				/* Run the filter specified by descriptor
				 * `flt`. */
				ret = FUNC6(a, flt);
				if(ret != ARCHIVE_OK) {
					/* Filter failure, return error. */
					return ret;
				}

				/* Filter descriptor won't be needed anymore
				 * after it's used, * so remove it from the
				 * filter list and free its memory. */
				(void) FUNC2(&rar->cstate.filters,
				    FUNC0(&flt));

				FUNC3(flt);
			} else {
				/* We can't run filters yet, dump the memory
				 * right before the filter. */
				FUNC5(a, rar,
				    rar->cstate.last_write_ptr,
				    flt->block_start);
			}

			/* Return 'filter applied or not needed' state to the
			 * caller. */
			return ARCHIVE_RETRY;
		}
	}

	rar->cstate.all_filters_applied = 1;
	return ARCHIVE_OK;
}