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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {int redir_type; int redir_flags; } ;
struct rar5 {TYPE_1__ file; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  AE_IFLNK ; 
 int /*<<< orphan*/  AE_IFREG ; 
 int /*<<< orphan*/  AE_SYMLINK_TYPE_DIRECTORY ; 
 int /*<<< orphan*/  AE_SYMLINK_TYPE_FILE ; 
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_OK ; 
 int MAX_NAME_IN_BYTES ; 
 int MAX_NAME_IN_CHARS ; 
 int REDIR_SYMLINK_IS_DIR ; 
#define  REDIR_TYPE_HARDLINK 130 
#define  REDIR_TYPE_UNIXSYMLINK 129 
#define  REDIR_TYPE_WINSYMLINK 128 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct archive_read*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_read*,size_t,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_read*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_read*,size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct archive_read* a,
    struct archive_entry* e, struct rar5* rar, ssize_t* extra_data_size)
{
	uint64_t value_size = 0;
	size_t target_size = 0;
	char target_utf8_buf[MAX_NAME_IN_BYTES];
	const uint8_t* p;

	if(!FUNC8(a, &rar->file.redir_type, &value_size))
		return ARCHIVE_EOF;
	if(ARCHIVE_OK != FUNC5(a, (int64_t)value_size))
		return ARCHIVE_EOF;
	*extra_data_size -= value_size;

	if(!FUNC8(a, &rar->file.redir_flags, &value_size))
		return ARCHIVE_EOF;
	if(ARCHIVE_OK != FUNC5(a, (int64_t)value_size))
		return ARCHIVE_EOF;
	*extra_data_size -= value_size;

	if(!FUNC9(a, &target_size, NULL))
		return ARCHIVE_EOF;
	*extra_data_size -= target_size + 1;

	if(!FUNC7(a, target_size, &p))
		return ARCHIVE_EOF;

	if(target_size > (MAX_NAME_IN_CHARS - 1)) {
		FUNC4(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Link target is too long");
		return ARCHIVE_FATAL;
	}

	if(target_size == 0) {
		FUNC4(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "No link target specified");
		return ARCHIVE_FATAL;
	}

	FUNC6(target_utf8_buf, p, target_size);
	target_utf8_buf[target_size] = 0;

	if(ARCHIVE_OK != FUNC5(a, (int64_t)target_size))
		return ARCHIVE_EOF;

	switch(rar->file.redir_type) {
		case REDIR_TYPE_UNIXSYMLINK:
		case REDIR_TYPE_WINSYMLINK:
			FUNC0(e, AE_IFLNK);
			FUNC3(e, target_utf8_buf);
			if (rar->file.redir_flags & REDIR_SYMLINK_IS_DIR) {
				FUNC1(e,
					AE_SYMLINK_TYPE_DIRECTORY);
			} else {
				FUNC1(e,
				AE_SYMLINK_TYPE_FILE);
			}
			break;

		case REDIR_TYPE_HARDLINK:
			FUNC0(e, AE_IFREG);
			FUNC2(e, target_utf8_buf);
			break;

		default:
			/* Unknown redir type, skip it. */
			break;
	}
	return ARCHIVE_OK;
}