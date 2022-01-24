#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int initialized; int all_filters_applied; scalar_t__ last_write_ptr; scalar_t__ write_ptr; int /*<<< orphan*/  filters; int /*<<< orphan*/  window_buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  solid; } ;
struct rar5 {TYPE_2__ cstate; TYPE_1__ main; } ;
struct filter_info {int /*<<< orphan*/  block_start; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_PROGRAMMER ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_RETRY ; 
 scalar_t__ CDE_OK ; 
 int FUNC0 (struct archive_read*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct filter_info**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct rar5* FUNC5 (struct archive_read*) ; 
 int /*<<< orphan*/  FUNC6 (struct rar5*) ; 
 int FUNC7 (struct archive_read*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_read*,struct rar5*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct archive_read* a) {
	struct rar5* rar = FUNC5(a);
	int ret;
	int64_t max_end_pos;

	if(!rar->cstate.initialized) {
		/* Don't perform full context reinitialization if we're
		 * processing a solid archive. */
		if(!rar->main.solid || !rar->cstate.window_buf) {
			FUNC6(rar);
		}

		rar->cstate.initialized = 1;
	}

	if(rar->cstate.all_filters_applied == 1) {
		/* We use while(1) here, but standard case allows for just 1
		 * iteration. The loop will iterate if process_block() didn't
		 * generate any data at all. This can happen if the block
		 * contains only filter definitions (this is common in big
		 * files). */
		while(1) {
			ret = FUNC7(a);
			if(ret == ARCHIVE_EOF || ret == ARCHIVE_FATAL)
				return ret;

			if(rar->cstate.last_write_ptr ==
			    rar->cstate.write_ptr) {
				/* The block didn't generate any new data,
				 * so just process a new block. */
				continue;
			}

			/* The block has generated some new data, so break
			 * the loop. */
			break;
		}
	}

	/* Try to run filters. If filters won't be applied, it means that
	 * insufficient data was generated. */
	ret = FUNC0(a);
	if(ret == ARCHIVE_RETRY) {
		return ARCHIVE_OK;
	} else if(ret == ARCHIVE_FATAL) {
		return ARCHIVE_FATAL;
	}

	/* If apply_filters() will return ARCHIVE_OK, we can continue here. */

	if(FUNC4(&rar->cstate.filters) > 0) {
		/* Check if we can write something before hitting first
		 * filter. */
		struct filter_info* flt;

		/* Get the block_start offset from the first filter. */
		if(CDE_OK != FUNC3(&rar->cstate.filters,
		    FUNC2(&flt)))
		{
			FUNC1(&a->archive,
			    ARCHIVE_ERRNO_PROGRAMMER,
			    "Can't read first filter");
			return ARCHIVE_FATAL;
		}

		max_end_pos = FUNC9(flt->block_start,
		    rar->cstate.write_ptr);
	} else {
		/* There are no filters defined, or all filters were applied.
		 * This means we can just store the data without any
		 * postprocessing. */
		max_end_pos = rar->cstate.write_ptr;
	}

	if(max_end_pos == rar->cstate.last_write_ptr) {
		/* We can't write anything yet. The block uncompression
		 * function did not generate enough data, and no filter can be
		 * applied. At the same time we don't have any data that can be
		 *  stored without filter postprocessing. This means we need to
		 *  wait for more data to be generated, so we can apply the
		 * filters.
		 *
		 * Signal the caller that we need more data to be able to do
		 * anything.
		 */
		return ARCHIVE_RETRY;
	} else {
		/* We can write the data before hitting the first filter.
		 * So let's do it. The push_window_data() function will
		 * effectively return the selected data block to the user
		 * application. */
		FUNC8(a, rar, rar->cstate.last_write_ptr,
		    max_end_pos);
		rar->cstate.last_write_ptr = max_end_pos;
	}

	return ARCHIVE_OK;
}