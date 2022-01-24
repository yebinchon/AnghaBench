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
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  _O_RDONLY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int,char*) ; 
 int FUNC4 (intptr_t,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pt_section*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct pt_section*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct pt_section*,int) ; 
 int FUNC9 (struct pt_section*) ; 
 int FUNC10 (struct pt_section*) ; 
 int /*<<< orphan*/  FUNC11 (struct pt_section*) ; 
 int pte_bad_file ; 
 int pte_internal ; 

int FUNC12(struct pt_section *section)
{
	const char *filename;
	HANDLE fh;
	FILE *file;
	int fd, errcode;

	if (!section)
		return -pte_internal;

	errcode = FUNC10(section);
	if (errcode < 0)
		return errcode;

	if (section->mcount)
		return FUNC9(section);

	if (section->mapping) {
		errcode = -pte_internal;
		goto out_unlock;
	}

	filename = section->filename;
	if (!filename) {
		errcode = -pte_internal;
		goto out_unlock;
	}

	fh = FUNC1(filename, GENERIC_READ, FILE_SHARE_READ, NULL,
			 OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
	if (fh == INVALID_HANDLE_VALUE) {
		/* We failed to open the file read-only.  Let's try to open it
		 * read-write; maybe our user has the file open for writing.
		 *
		 * We will detect changes to the file via fstat().
		 */

		fh = FUNC1(filename, GENERIC_READ, FILE_SHARE_WRITE,
				 NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL,
				 NULL);
		if (fh == INVALID_HANDLE_VALUE) {
			errcode = -pte_bad_file;
			goto out_unlock;
		}
	}

	fd = FUNC4((intptr_t) fh, _O_RDONLY);
	if (fd == -1) {
		errcode = -pte_bad_file;
		goto out_fh;
	}

	errcode = FUNC5(section, fd);
	if (errcode < 0)
		goto out_fd;

	/* We leave the file open on success.  It will be closed when the
	 * section is unmapped.
	 */
	errcode = FUNC8(section, fd);
	if (!errcode)
		return FUNC9(section);

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
	errcode = FUNC7(section, file);
	if (!errcode)
		return FUNC9(section);

	FUNC6(file);
	goto out_unlock;

out_fd:
	FUNC2(fd);
	return errcode;

out_fh:
	FUNC0(fh);

out_unlock:
	(void) FUNC11(section);
	return errcode;
}