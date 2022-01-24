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
struct file {unsigned int name_len; int dir; TYPE_1__* times; int /*<<< orphan*/  flg; int /*<<< orphan*/  size; int /*<<< orphan*/  mode; scalar_t__* utf16name; } ;
struct archive_write {int /*<<< orphan*/  archive; scalar_t__ format_data; } ;
struct archive_entry {int dummy; } ;
struct _7zip {int /*<<< orphan*/  sconv; } ;
struct TYPE_2__ {int /*<<< orphan*/  time_ns; int /*<<< orphan*/  time; } ;

/* Variables and functions */
 scalar_t__ AE_IFDIR ; 
 scalar_t__ AE_IFLNK ; 
 scalar_t__ AE_IFREG ; 
 scalar_t__ ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 size_t ATIME ; 
 int /*<<< orphan*/  ATIME_IS_SET ; 
 size_t CTIME ; 
 int /*<<< orphan*/  CTIME_IS_SET ; 
 scalar_t__ ENOMEM ; 
 size_t MTIME ; 
 int /*<<< orphan*/  MTIME_IS_SET ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 scalar_t__ FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 scalar_t__ FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 scalar_t__ FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*) ; 
 scalar_t__ FUNC9 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*) ; 
 scalar_t__ FUNC11 (struct archive_entry*,char const**,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 struct file* FUNC16 (int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC17 (struct file*) ; 
 scalar_t__* FUNC18 (size_t) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(struct archive_write *a, struct archive_entry *entry,
    struct file **newfile)
{
	struct _7zip *zip;
	struct file *file;
	const char *u16;
	size_t u16len;
	int ret = ARCHIVE_OK;

	zip = (struct _7zip *)a->format_data;
	*newfile = NULL;

	file = FUNC16(1, sizeof(*file));
	if (file == NULL) {
		FUNC15(&a->archive, ENOMEM,
		    "Can't allocate memory");
		return (ARCHIVE_FATAL);
	}

	if (0 > FUNC11(entry, &u16, &u16len, zip->sconv)) {
		if (errno == ENOMEM) {
			FUNC17(file);
			FUNC15(&a->archive, ENOMEM,
			    "Can't allocate memory for UTF-16LE");
			return (ARCHIVE_FATAL);
		}
		FUNC15(&a->archive, ARCHIVE_ERRNO_MISC,
		    "A filename cannot be converted to UTF-16LE;"
		    "You should disable making Joliet extension");
		ret = ARCHIVE_WARN;
	}
	file->utf16name = FUNC18(u16len + 2);
	if (file->utf16name == NULL) {
		FUNC17(file);
		FUNC15(&a->archive, ENOMEM,
		    "Can't allocate memory for Name");
		return (ARCHIVE_FATAL);
	}
	FUNC19(file->utf16name, u16, u16len);
	file->utf16name[u16len+0] = 0;
	file->utf16name[u16len+1] = 0;
	file->name_len = (unsigned)u16len;
	file->mode = FUNC7(entry);
	if (FUNC6(entry) == AE_IFREG)
		file->size = FUNC13(entry);
	else
		FUNC12(entry, 0);
	if (FUNC6(entry) == AE_IFDIR)
		file->dir = 1;
	else if (FUNC6(entry) == AE_IFLNK)
		file->size = FUNC20(FUNC14(entry));
	if (FUNC9(entry)) {
		file->flg |= MTIME_IS_SET;
		file->times[MTIME].time = FUNC8(entry);
		file->times[MTIME].time_ns = FUNC10(entry);
	}
	if (FUNC1(entry)) {
		file->flg |= ATIME_IS_SET;
		file->times[ATIME].time = FUNC0(entry);
		file->times[ATIME].time_ns = FUNC2(entry);
	}
	if (FUNC4(entry)) {
		file->flg |= CTIME_IS_SET;
		file->times[CTIME].time = FUNC3(entry);
		file->times[CTIME].time_ns = FUNC5(entry);
	}

	*newfile = file;
	return (ret);
}