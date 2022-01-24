#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  s; } ;
struct private_uuencode {size_t bs; TYPE_1__ name; int /*<<< orphan*/  mode; int /*<<< orphan*/  encoded_buff; } ;
struct archive_write_filter {struct private_uuencode* data; TYPE_2__* archive; int /*<<< orphan*/  next_filter; } ;
struct TYPE_5__ {scalar_t__ magic; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 scalar_t__ ARCHIVE_WRITE_MAGIC ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC5(struct archive_write_filter *f)
{
	struct private_uuencode *state = (struct private_uuencode *)f->data;
	size_t bs = 65536, bpb;
	int ret;

	ret = FUNC0(f->next_filter);
	if (ret != ARCHIVE_OK)
		return (ret);

	if (f->archive->magic == ARCHIVE_WRITE_MAGIC) {
		/* Buffer size should be a multiple number of the of bytes
		 * per block for performance. */
		bpb = FUNC4(f->archive);
		if (bpb > bs)
			bs = bpb;
		else if (bpb != 0)
			bs -= bs % bpb;
	}

	state->bs = bs;
	if (FUNC2(&state->encoded_buff, bs + 512) == NULL) {
		FUNC1(f->archive, ENOMEM,
		    "Can't allocate data for uuencode buffer");
		return (ARCHIVE_FATAL);
	}

	FUNC3(&state->encoded_buff, "begin %o %s\n",
	    state->mode, state->name.s);

	f->data = state;
	return (0);
}