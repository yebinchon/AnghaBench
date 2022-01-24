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
struct private_data {struct private_data* compressed; int /*<<< orphan*/  compressed_offset; int /*<<< orphan*/  cur_code; } ;
struct archive_write_filter {int /*<<< orphan*/  next_filter; scalar_t__ data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct private_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct private_data*) ; 
 int FUNC3 (struct archive_write_filter*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct archive_write_filter*) ; 

__attribute__((used)) static int
FUNC5(struct archive_write_filter *f)
{
	struct private_data *state = (struct private_data *)f->data;
	int ret, ret2;

	ret = FUNC3(f, state->cur_code);
	if (ret != ARCHIVE_OK)
		goto cleanup;
	ret = FUNC4(f);
	if (ret != ARCHIVE_OK)
		goto cleanup;

	/* Write the last block */
	ret = FUNC1(f->next_filter,
	    state->compressed, state->compressed_offset);
cleanup:
	ret2 = FUNC0(f->next_filter);
	if (ret > ret2)
		ret = ret2;
	FUNC2(state->compressed);
	FUNC2(state);
	return (ret);
}