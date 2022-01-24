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
typedef  int wchar_t ;
struct TYPE_2__ {int /*<<< orphan*/  m; int /*<<< orphan*/  w; } ;
struct read_file_data {int fd; size_t block_size; TYPE_1__ filename; int /*<<< orphan*/  filename_type; } ;
struct archive_string {int /*<<< orphan*/  s; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_OK ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FNT_MBS ; 
 int /*<<< orphan*/  FNT_STDIN ; 
 int /*<<< orphan*/  FNT_WCS ; 
 scalar_t__ FUNC0 (struct archive*,struct read_file_data*) ; 
 int FUNC1 (struct archive*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,scalar_t__,char*) ; 
 scalar_t__ FUNC9 (struct archive_string*,int const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_string*) ; 
 scalar_t__ FUNC12 (int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  file_close ; 
 int /*<<< orphan*/  file_open ; 
 int /*<<< orphan*/  file_read ; 
 int /*<<< orphan*/  file_seek ; 
 int /*<<< orphan*/  file_skip ; 
 int /*<<< orphan*/  file_switch ; 
 int /*<<< orphan*/  FUNC13 (struct read_file_data*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int const*) ; 
 int FUNC16 (int const*) ; 

int
FUNC17(struct archive *a, const wchar_t *wfilename,
    size_t block_size)
{
	struct read_file_data *mine = (struct read_file_data *)FUNC12(1,
		sizeof(*mine) + FUNC16(wfilename) * sizeof(wchar_t));
	if (!mine)
	{
		FUNC8(a, ENOMEM, "No memory");
		return (ARCHIVE_FATAL);
	}
	mine->fd = -1;
	mine->block_size = block_size;

	if (wfilename == NULL || wfilename[0] == L'\0') {
		mine->filename_type = FNT_STDIN;
	} else {
#if defined(_WIN32) && !defined(__CYGWIN__)
		mine->filename_type = FNT_WCS;
		wcscpy(mine->filename.w, wfilename);
#else
		/*
		 * POSIX system does not support a wchar_t interface for
		 * open() system call, so we have to translate a wchar_t
		 * filename to multi-byte one and use it.
		 */
		struct archive_string fn;

		FUNC11(&fn);
		if (FUNC9(&fn, wfilename,
		    FUNC16(wfilename)) != 0) {
			if (errno == ENOMEM)
				FUNC8(a, errno,
				    "Can't allocate memory");
			else
				FUNC8(a, EINVAL,
				    "Failed to convert a wide-character"
				    " filename to a multi-byte filename");
			FUNC10(&fn);
			FUNC13(mine);
			return (ARCHIVE_FATAL);
		}
		mine->filename_type = FNT_MBS;
		FUNC14(mine->filename.m, fn.s);
		FUNC10(&fn);
#endif
	}
	if (FUNC0(a, mine) != (ARCHIVE_OK))
		return (ARCHIVE_FATAL);
	FUNC3(a, file_open);
	FUNC4(a, file_read);
	FUNC6(a, file_skip);
	FUNC2(a, file_close);
	FUNC7(a, file_switch);
	FUNC5(a, file_seek);

	return (FUNC1(a));
}