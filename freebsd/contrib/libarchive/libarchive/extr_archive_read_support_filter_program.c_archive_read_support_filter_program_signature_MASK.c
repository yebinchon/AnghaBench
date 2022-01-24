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
struct program_bidder {int /*<<< orphan*/ * cmd; } ;
struct archive_read_filter_bidder {int dummy; } ;
struct archive_read {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC0 (struct archive_read*,struct archive_read_filter_bidder**) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct program_bidder*) ; 
 int FUNC4 (struct archive_read_filter_bidder*,struct program_bidder*,void const*,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 

int
FUNC6(struct archive *_a,
    const char *cmd, const void *signature, size_t signature_len)
{
	struct archive_read *a = (struct archive_read *)_a;
	struct archive_read_filter_bidder *bidder;
	struct program_bidder *state;

	/*
	 * Get a bidder object from the read core.
	 */
	if (FUNC0(a, &bidder) != ARCHIVE_OK)
		return (ARCHIVE_FATAL);

	/*
	 * Allocate our private state.
	 */
	state = (struct program_bidder *)FUNC2(1, sizeof (*state));
	if (state == NULL)
		goto memerr;
	state->cmd = FUNC5(cmd);
	if (state->cmd == NULL)
		goto memerr;

	return FUNC4(bidder, state, signature, signature_len);
memerr:
	FUNC3(state);
	FUNC1(_a, ENOMEM, "Can't allocate memory");
	return (ARCHIVE_FATAL);
}