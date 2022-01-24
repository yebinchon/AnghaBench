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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 scalar_t__ V_VERBOSE ; 
 char* filename ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int progress_active ; 
 scalar_t__ progress_automatic ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 char* FUNC5 (scalar_t__,scalar_t__ const) ; 
 char* FUNC6 (scalar_t__,scalar_t__,int) ; 
 char* FUNC7 (scalar_t__,scalar_t__ const) ; 
 int /*<<< orphan*/  progress_started ; 
 char* FUNC8 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC11 (char const*,int) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static void
FUNC12(bool finished)
{
	if (!progress_started || verbosity < V_VERBOSE)
		return;

	uint64_t in_pos;
	uint64_t compressed_pos;
	uint64_t uncompressed_pos;
	FUNC4(&in_pos, &compressed_pos, &uncompressed_pos);

	// Avoid printing intermediate progress info if some error occurs
	// in the beginning of the stream. (If something goes wrong later in
	// the stream, it is sometimes useful to tell the user where the
	// error approximately occurred, especially if the error occurs
	// after a time-consuming operation.)
	if (!finished && !progress_active
			&& (compressed_pos == 0 || uncompressed_pos == 0))
		return;

	progress_active = false;

	const uint64_t elapsed = FUNC2();

	FUNC9();

	// When using the auto-updating progress indicator, the final
	// statistics are printed in the same format as the progress
	// indicator itself.
	if (progress_automatic) {
		const char *cols[5] = {
			finished ? "100 %" : FUNC3(in_pos),
			FUNC6(compressed_pos, uncompressed_pos, true),
			FUNC7(uncompressed_pos, elapsed),
			FUNC8(elapsed),
			finished ? "" : FUNC5(in_pos, elapsed),
		};
		FUNC0(stderr, "\r %*s %*s   %*s %10s   %10s\n",
				FUNC11(cols[0], 6), cols[0],
				FUNC11(cols[1], 35), cols[1],
				FUNC11(cols[2], 9), cols[2],
				cols[3],
				cols[4]);
	} else {
		// The filename is always printed.
		FUNC0(stderr, "%s: ", filename);

		// Percentage is printed only if we didn't finish yet.
		if (!finished) {
			// Don't print the percentage when it isn't known
			// (starts with a dash).
			const char *percentage = FUNC3(in_pos);
			if (percentage[0] != '-')
				FUNC0(stderr, "%s, ", percentage);
		}

		// Size information is always printed.
		FUNC0(stderr, "%s", FUNC6(
				compressed_pos, uncompressed_pos, true));

		// The speed and elapsed time aren't always shown.
		const char *speed = FUNC7(uncompressed_pos, elapsed);
		if (speed[0] != '\0')
			FUNC0(stderr, ", %s", speed);

		const char *elapsed_str = FUNC8(elapsed);
		if (elapsed_str[0] != '\0')
			FUNC0(stderr, ", %s", elapsed_str);

		FUNC1('\n', stderr);
	}

	FUNC10();

	return;
}