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
struct zip {scalar_t__ central_directory_offset; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static int
FUNC2(struct zip *zip, const char *p, int64_t current_offset)
{
	/* Sanity-check the EOCD we've found. */

	/* This must be the first volume. */
	if (FUNC0(p + 4) != 0)
		return 0;
	/* Central directory must be on this volume. */
	if (FUNC0(p + 4) != FUNC0(p + 6))
		return 0;
	/* All central directory entries must be on this volume. */
	if (FUNC0(p + 10) != FUNC0(p + 8))
		return 0;
	/* Central directory can't extend beyond start of EOCD record. */
	if (FUNC1(p + 16) + FUNC1(p + 12)
	    > current_offset)
		return 0;

	/* Save the central directory location for later use. */
	zip->central_directory_offset = FUNC1(p + 16);

	/* This is just a tiny bit higher than the maximum
	   returned by the streaming Zip bidder.  This ensures
	   that the more accurate seeking Zip parser wins
	   whenever seek is available. */
	return 32;
}