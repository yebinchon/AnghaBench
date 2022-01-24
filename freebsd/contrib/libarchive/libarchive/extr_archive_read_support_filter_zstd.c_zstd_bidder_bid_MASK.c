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
struct archive_read_filter_bidder {int dummy; } ;
struct archive_read_filter {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 unsigned char* FUNC0 (struct archive_read_filter*,int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (unsigned char const*) ; 

__attribute__((used)) static int
FUNC2(struct archive_read_filter_bidder *self,
    struct archive_read_filter *filter)
{
	const unsigned char *buffer;
	ssize_t avail;
	unsigned prefix;

	/* Zstd frame magic values */
	const unsigned zstd_magic = 0xFD2FB528U;

	(void) self; /* UNUSED */

	buffer = FUNC0(filter, 4, &avail);
	if (buffer == NULL)
		return (0);

	prefix = FUNC1(buffer);
	if (prefix == zstd_magic)
		return (32);

	return (0);
}