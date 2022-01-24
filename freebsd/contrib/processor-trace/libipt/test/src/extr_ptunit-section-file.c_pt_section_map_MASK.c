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
typedef  scalar_t__ uint16_t ;
struct pt_section {char* filename; struct pt_file_status* status; scalar_t__ mapping; scalar_t__ mcount; } ;
struct pt_file_status {long size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pt_section*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct pt_section*) ; 
 int FUNC6 (struct pt_section*) ; 
 int /*<<< orphan*/  FUNC7 (struct pt_section*) ; 
 int pte_bad_image ; 
 int pte_internal ; 

int FUNC8(struct pt_section *section)
{
	struct pt_file_status *status;
	const char *filename;
	uint16_t mcount;
	FILE *file;
	long size;
	int errcode;

	if (!section)
		return -pte_internal;

	errcode = FUNC5(section);
	if (errcode < 0)
		return errcode;

	mcount = section->mcount;
	if (mcount)
		return FUNC6(section);

	if (section->mapping)
		goto out_unlock;

	filename = section->filename;
	if (!filename)
		goto out_unlock;

	status = section->status;
	if (!status)
		goto out_unlock;

	errcode = -pte_bad_image;
	file = FUNC1(filename, "rb");
	if (!file)
		goto out_unlock;

	errcode = FUNC2(file, 0, SEEK_END);
	if (errcode) {
		errcode = -pte_bad_image;
		goto out_file;
	}

	errcode = -pte_bad_image;
	size = FUNC3(file);
	if (size < 0)
		goto out_file;

	if (size != status->size)
		goto out_file;

	/* We need to keep the file open on success.  It will be closed when
	 * the section is unmapped.
	 */
	errcode = FUNC4(section, file);
	if (!errcode)
		return FUNC6(section);

out_file:
	FUNC0(file);

out_unlock:
	(void) FUNC7(section);
	return errcode;
}