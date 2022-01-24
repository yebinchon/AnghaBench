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
struct archive_read {int dummy; } ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 char* FUNC0 (struct archive_read*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct archive_read*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4(struct archive_read *a, struct zip *zip, const char *p)
{
	int64_t eocd64_offset;
	int64_t eocd64_size;

	/* Sanity-check the locator record. */

	/* Central dir must be on first volume. */
	if (FUNC2(p + 4) != 0)
		return 0;
	/* Must be only a single volume. */
	if (FUNC2(p + 16) != 1)
		return 0;

	/* Find the Zip64 EOCD record. */
	eocd64_offset = FUNC3(p + 8);
	if (FUNC1(a, eocd64_offset, SEEK_SET) < 0)
		return 0;
	if ((p = FUNC0(a, 56, NULL)) == NULL)
		return 0;
	/* Make sure we can read all of it. */
	eocd64_size = FUNC3(p + 4) + 12;
	if (eocd64_size < 56 || eocd64_size > 16384)
		return 0;
	if ((p = FUNC0(a, (size_t)eocd64_size, NULL)) == NULL)
		return 0;

	/* Sanity-check the EOCD64 */
	if (FUNC2(p + 16) != 0) /* Must be disk #0 */
		return 0;
	if (FUNC2(p + 20) != 0) /* CD must be on disk #0 */
		return 0;
	/* CD can't be split. */
	if (FUNC3(p + 24) != FUNC3(p + 32))
		return 0;

	/* Save the central directory offset for later use. */
	zip->central_directory_offset = FUNC3(p + 48);

	return 32;
}