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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  memlimitstr ;
typedef  enum message_verbosity { ____Placeholder_message_verbosity } message_verbosity ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int UINT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  opt_mode ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 
 char* FUNC6 (int,int) ; 
 int verbosity ; 

extern void
FUNC7(enum message_verbosity v, uint64_t memusage)
{
	if (v > verbosity)
		return;

	// Convert memusage to MiB, rounding up to the next full MiB.
	// This way the user can always use the displayed usage as
	// the new memory usage limit. (If we rounded to the nearest,
	// the user might need to +1 MiB to get high enough limit.)
	memusage = FUNC4(memusage);

	uint64_t memlimit = FUNC2(opt_mode);

	// Handle the case when there is no memory usage limit.
	// This way we don't print a weird message with a huge number.
	if (memlimit == UINT64_MAX) {
		FUNC3(v, FUNC1("%s MiB of memory is required. "
				"The limiter is disabled."),
				FUNC6(memusage, 0));
		return;
	}

	// With US-ASCII:
	// 2^64 with thousand separators + " MiB" suffix + '\0' = 26 + 4 + 1
	// But there may be multibyte chars so reserve enough space.
	char memlimitstr[128];

	// Show the memory usage limit as MiB unless it is less than 1 MiB.
	// This way it's easy to notice errors where one has typed
	// --memory=123 instead of --memory=123MiB.
	if (memlimit < (FUNC0(1) << 20)) {
		FUNC5(memlimitstr, sizeof(memlimitstr), "%s B",
				FUNC6(memlimit, 1));
	} else {
		// Round up just like with memusage. If this function is
		// called for informational purposes (to just show the
		// current usage and limit), we should never show that
		// the usage is higher than the limit, which would give
		// a false impression that the memory usage limit isn't
		// properly enforced.
		FUNC5(memlimitstr, sizeof(memlimitstr), "%s MiB",
				FUNC6(FUNC4(memlimit), 1));
	}

	FUNC3(v, FUNC1("%s MiB of memory is required. The limit is %s."),
			FUNC6(memusage, 0), memlimitstr);

	return;
}