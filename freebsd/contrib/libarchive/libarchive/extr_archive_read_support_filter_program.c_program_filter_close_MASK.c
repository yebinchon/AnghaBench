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
struct program_filter {int /*<<< orphan*/  description; struct program_filter* out_buf; } ;
struct archive_read_filter {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct archive_read_filter*,struct program_filter*) ; 
 int /*<<< orphan*/  FUNC2 (struct program_filter*) ; 

__attribute__((used)) static int
FUNC3(struct archive_read_filter *self)
{
	struct program_filter	*state;
	int e;

	state = (struct program_filter *)self->data;
	e = FUNC1(self, state);

	/* Release our private data. */
	FUNC2(state->out_buf);
	FUNC0(&state->description);
	FUNC2(state);

	return (e);
}