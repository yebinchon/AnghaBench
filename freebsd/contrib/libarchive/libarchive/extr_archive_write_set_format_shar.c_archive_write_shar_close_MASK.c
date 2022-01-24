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
struct TYPE_2__ {int /*<<< orphan*/  length; int /*<<< orphan*/  s; } ;
struct shar {scalar_t__ wrote_header; TYPE_1__ work; } ;
struct archive_write {int /*<<< orphan*/  archive; scalar_t__ format_data; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int FUNC0 (struct archive_write*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(struct archive_write *a)
{
	struct shar *shar;
	int ret;

	/*
	 * TODO: Accumulate list of directory names/modes and
	 * fix them all up at end-of-archive.
	 */

	shar = (struct shar *)a->format_data;

	/*
	 * Only write the end-of-archive markers if the archive was
	 * actually started.  This avoids problems if someone sets
	 * shar format, then sets another format (which would invoke
	 * shar_finish to free the format-specific data).
	 */
	if (shar->wrote_header == 0)
		return (ARCHIVE_OK);

	FUNC1(&shar->work, "exit\n");

	ret = FUNC0(a, shar->work.s, shar->work.length);
	if (ret != ARCHIVE_OK)
		return (ARCHIVE_FATAL);

	/* Shar output is never padded. */
	FUNC2(&a->archive, 1);
	/*
	 * TODO: shar should also suppress padding of
	 * uncompressed data within gzip/bzip2 streams.
	 */

	return (ARCHIVE_OK);
}