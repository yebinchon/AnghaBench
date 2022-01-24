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
typedef  enum nicestr_unit { ____Placeholder_nicestr_unit } nicestr_unit ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int NICESTR_B ; 
 int NICESTR_MIB ; 
 int /*<<< orphan*/  NICESTR_TIB ; 
 int /*<<< orphan*/  FUNC0 (char**,size_t*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,double const) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int const,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static const char *
FUNC3(uint64_t compressed_pos, uint64_t uncompressed_pos, bool final)
{
	// Use big enough buffer to hold e.g. a multibyte thousand separators.
	static char buf[128];
	char *pos = buf;
	size_t left = sizeof(buf);

	// Print the sizes. If this the final message, use more reasonable
	// units than MiB if the file was small.
	const enum nicestr_unit unit_min = final ? NICESTR_B : NICESTR_MIB;
	FUNC0(&pos, &left, "%s / %s",
			FUNC2(compressed_pos,
				unit_min, NICESTR_TIB, false, 0),
			FUNC2(uncompressed_pos,
				unit_min, NICESTR_TIB, false, 1));

	// Avoid division by zero. If we cannot calculate the ratio, set
	// it to some nice number greater than 10.0 so that it gets caught
	// in the next if-clause.
	const double ratio = uncompressed_pos > 0
			? (double)(compressed_pos) / (double)(uncompressed_pos)
			: 16.0;

	// If the ratio is very bad, just indicate that it is greater than
	// 9.999. This way the length of the ratio field stays fixed.
	if (ratio > 9.999)
		FUNC1(pos, left, " > %.3f", 9.999);
	else
		FUNC1(pos, left, " = %.3f", ratio);

	return buf;
}