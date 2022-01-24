#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  s; } ;
struct private_b64encode {scalar_t__ hold_len; TYPE_1__ encoded_buff; int /*<<< orphan*/  hold; } ;
struct archive_write_filter {int /*<<< orphan*/  next_filter; int /*<<< orphan*/  archive; scalar_t__ data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct archive_write_filter *f)
{
	struct private_b64encode *state = (struct private_b64encode *)f->data;
	int ret, ret2;

	/* Flush remaining bytes. */
	if (state->hold_len != 0)
		FUNC5(&state->encoded_buff, state->hold, state->hold_len);
	FUNC2(&state->encoded_buff, "====\n");
	/* Write the last block */
	FUNC4(f->archive, 1);
	ret = FUNC1(f->next_filter,
	    state->encoded_buff.s, FUNC3(&state->encoded_buff));
	ret2 = FUNC0(f->next_filter);
	if (ret > ret2)
		ret = ret2;
	return (ret);
}