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
struct TYPE_2__ {int /*<<< orphan*/  last_write_ptr; int /*<<< orphan*/  filtered_buf; } ;
struct rar5 {TYPE_1__ cstate; } ;
struct filter_info {int type; int /*<<< orphan*/  block_length; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_PROGRAMMER ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
#define  FILTER_ARM 131 
#define  FILTER_DELTA 130 
#define  FILTER_E8 129 
#define  FILTER_E8E9 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct rar5* FUNC2 (struct archive_read*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct archive_read*,struct rar5*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rar5*,struct filter_info*) ; 
 int FUNC6 (struct rar5*,struct filter_info*) ; 
 int FUNC7 (struct rar5*,struct filter_info*,int) ; 

__attribute__((used)) static int FUNC8(struct archive_read* a, struct filter_info* flt) {
	int ret;
	struct rar5* rar = FUNC2(a);

	FUNC1(rar->cstate.filtered_buf);

	rar->cstate.filtered_buf = FUNC3(flt->block_length);
	if(!rar->cstate.filtered_buf) {
		FUNC0(&a->archive, ENOMEM,
		    "Can't allocate memory for filter data.");
		return ARCHIVE_FATAL;
	}

	switch(flt->type) {
		case FILTER_DELTA:
			ret = FUNC6(rar, flt);
			break;

		case FILTER_E8:
			/* fallthrough */
		case FILTER_E8E9:
			ret = FUNC7(rar, flt,
			    flt->type == FILTER_E8E9);
			break;

		case FILTER_ARM:
			ret = FUNC5(rar, flt);
			break;

		default:
			FUNC0(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "Unsupported filter type: 0x%x", flt->type);
			return ARCHIVE_FATAL;
	}

	if(ret != ARCHIVE_OK) {
		/* Filter has failed. */
		return ret;
	}

	if(ARCHIVE_OK != FUNC4(a, rar, rar->cstate.filtered_buf,
	    flt->block_length, rar->cstate.last_write_ptr))
	{
		FUNC0(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
		    "Stack overflow when submitting unpacked data");

		return ARCHIVE_FATAL;
	}

	rar->cstate.last_write_ptr += flt->block_length;
	return ARCHIVE_OK;
}