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
struct TYPE_2__ {int /*<<< orphan*/  min_version; scalar_t__ all_have_sizes; int /*<<< orphan*/  memusage_max; int /*<<< orphan*/  stream_padding; int /*<<< orphan*/  checks; int /*<<< orphan*/  uncompressed_size; int /*<<< orphan*/  compressed_size; int /*<<< orphan*/  blocks; int /*<<< orphan*/  streams; int /*<<< orphan*/  files; } ;

/* Variables and functions */
 scalar_t__ V_DEBUG ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__ totals ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void)
{
	FUNC4('\n');
	FUNC5(FUNC0("Totals:"));
	FUNC3(FUNC0("  Number of files:    %s\n"),
			FUNC7(totals.files, 0));
	FUNC2(totals.streams, totals.blocks,
			totals.compressed_size, totals.uncompressed_size,
			totals.checks, totals.stream_padding);

	if (FUNC1() >= V_DEBUG) {
		FUNC3(FUNC0("  Memory needed:      %s MiB\n"), FUNC7(
				FUNC6(totals.memusage_max), 0));
		FUNC3(FUNC0("  Sizes in headers:   %s\n"),
				totals.all_have_sizes ? FUNC0("Yes") : FUNC0("No"));
		FUNC3(FUNC0("  Minimum XZ Utils version: %s\n"),
				FUNC8(totals.min_version));
	}

	return;
}