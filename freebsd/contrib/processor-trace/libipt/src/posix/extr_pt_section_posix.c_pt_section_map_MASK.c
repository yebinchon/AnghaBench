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
struct pt_section {char* filename; scalar_t__ mapping; scalar_t__ mcount; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC0 (struct pt_section*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,char*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pt_section*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct pt_section*,int) ; 
 int FUNC7 (struct pt_section*) ; 
 int FUNC8 (struct pt_section*) ; 
 int /*<<< orphan*/  FUNC9 (struct pt_section*) ; 
 int pte_bad_file ; 
 int pte_internal ; 

int FUNC10(struct pt_section *section)
{
	const char *filename;
	FILE *file;
	int fd, errcode;

	if (!section)
		return -pte_internal;

	errcode = FUNC8(section);
	if (errcode < 0)
		return errcode;

	if (section->mcount)
		return FUNC7(section);

	if (section->mapping)
		goto out_unlock;

	filename = section->filename;
	if (!filename)
		goto out_unlock;

	errcode = -pte_bad_file;
	fd = FUNC4(filename, O_RDONLY);
	if (fd == -1)
		goto out_unlock;

	errcode = FUNC0(section, fd);
	if (errcode < 0)
		goto out_fd;

	/* We close the file on success.  This does not unmap the section. */
	errcode = FUNC6(section, fd);
	if (!errcode) {
		FUNC1(fd);

		return FUNC7(section);
	}

	/* Fall back to file based sections - report the original error
	 * if we fail to convert the file descriptor.
	 */
	file = FUNC3(fd, "rb");
	if (!file) {
		errcode = -pte_bad_file;
		goto out_fd;
	}

	/* We need to keep the file open on success.  It will be closed when
	 * the section is unmapped.
	 */
	errcode = FUNC5(section, file);
	if (!errcode)
		return FUNC7(section);

	FUNC2(file);
	goto out_unlock;

out_fd:
	FUNC1(fd);

out_unlock:
	(void) FUNC9(section);
	return errcode;
}