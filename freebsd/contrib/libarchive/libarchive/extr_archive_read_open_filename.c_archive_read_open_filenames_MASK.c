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
struct TYPE_2__ {int /*<<< orphan*/  m; } ;
struct read_file_data {size_t block_size; int fd; int /*<<< orphan*/  filename_type; scalar_t__ use_lseek; scalar_t__ st_mode; int /*<<< orphan*/ * buffer; TYPE_1__ filename; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FNT_MBS ; 
 int /*<<< orphan*/  FNT_STDIN ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 scalar_t__ FUNC1 (struct archive*,struct read_file_data*) ; 
 int FUNC2 (struct archive*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (int,scalar_t__) ; 
 int /*<<< orphan*/  file_close ; 
 int /*<<< orphan*/  file_open ; 
 int /*<<< orphan*/  file_read ; 
 int /*<<< orphan*/  file_seek ; 
 int /*<<< orphan*/  file_skip ; 
 int /*<<< orphan*/  file_switch ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC12 (char const*) ; 

int
FUNC13(struct archive *a, const char **filenames,
    size_t block_size)
{
	struct read_file_data *mine;
	const char *filename = NULL;
	if (filenames)
		filename = *(filenames++);

	FUNC0(a);
	do
	{
		if (filename == NULL)
			filename = "";
		mine = (struct read_file_data *)FUNC10(1,
			sizeof(*mine) + FUNC12(filename));
		if (mine == NULL)
			goto no_memory;
		FUNC11(mine->filename.m, filename);
		mine->block_size = block_size;
		mine->fd = -1;
		mine->buffer = NULL;
		mine->st_mode = mine->use_lseek = 0;
		if (filename == NULL || filename[0] == '\0') {
			mine->filename_type = FNT_STDIN;
		} else
			mine->filename_type = FNT_MBS;
		if (FUNC1(a, mine) != (ARCHIVE_OK))
			return (ARCHIVE_FATAL);
		if (filenames == NULL)
			break;
		filename = *(filenames++);
	} while (filename != NULL && filename[0] != '\0');
	FUNC4(a, file_open);
	FUNC5(a, file_read);
	FUNC7(a, file_skip);
	FUNC3(a, file_close);
	FUNC8(a, file_switch);
	FUNC6(a, file_seek);

	return (FUNC2(a));
no_memory:
	FUNC9(a, ENOMEM, "No memory");
	return (ARCHIVE_FATAL);
}