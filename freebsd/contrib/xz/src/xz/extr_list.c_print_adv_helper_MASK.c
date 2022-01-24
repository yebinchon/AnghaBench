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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int CHECKS_STR_SIZE ; 
 int /*<<< orphan*/  NICESTR_B ; 
 int /*<<< orphan*/  NICESTR_TIB ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(uint64_t stream_count, uint64_t block_count,
		uint64_t compressed_size, uint64_t uncompressed_size,
		uint32_t checks, uint64_t stream_padding)
{
	char checks_str[CHECKS_STR_SIZE];
	FUNC1(checks_str, checks, true);

	FUNC3(FUNC0("  Streams:            %s\n"),
			FUNC5(stream_count, 0));
	FUNC3(FUNC0("  Blocks:             %s\n"),
			FUNC5(block_count, 0));
	FUNC3(FUNC0("  Compressed size:    %s\n"),
			FUNC4(compressed_size,
				NICESTR_B, NICESTR_TIB, true, 0));
	FUNC3(FUNC0("  Uncompressed size:  %s\n"),
			FUNC4(uncompressed_size,
				NICESTR_B, NICESTR_TIB, true, 0));
	FUNC3(FUNC0("  Ratio:              %s\n"),
			FUNC2(compressed_size, uncompressed_size));
	FUNC3(FUNC0("  Check:              %s\n"), checks_str);
	FUNC3(FUNC0("  Stream padding:     %s\n"),
			FUNC4(stream_padding,
				NICESTR_B, NICESTR_TIB, true, 0));
	return;
}