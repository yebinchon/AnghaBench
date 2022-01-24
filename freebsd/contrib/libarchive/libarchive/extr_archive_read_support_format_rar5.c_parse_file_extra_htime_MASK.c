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
struct TYPE_2__ {int /*<<< orphan*/  e_unix_ns; int /*<<< orphan*/  e_atime; int /*<<< orphan*/  e_ctime; int /*<<< orphan*/  e_mtime; } ;
struct rar5 {TYPE_1__ file; } ;
struct archive_read {int dummy; } ;
struct archive_entry {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 scalar_t__ ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct archive_read*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_read*,char,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_read*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_read*,size_t*,size_t*) ; 

__attribute__((used)) static int FUNC7(struct archive_read* a,
    struct archive_entry* e, struct rar5* rar, ssize_t* extra_data_size)
{
	char unix_time = 0;
	size_t flags;
	size_t value_len;

	enum HTIME_FLAGS {
		IS_UNIX       = 0x01,
		HAS_MTIME     = 0x02,
		HAS_CTIME     = 0x04,
		HAS_ATIME     = 0x08,
		HAS_UNIX_NS   = 0x10,
	};

	if(!FUNC6(a, &flags, &value_len))
		return ARCHIVE_EOF;

	*extra_data_size -= value_len;
	if(ARCHIVE_OK != FUNC3(a, value_len)) {
		return ARCHIVE_EOF;
	}

	unix_time = flags & IS_UNIX;

	if(flags & HAS_MTIME) {
		FUNC4(a, unix_time, &rar->file.e_mtime,
		    extra_data_size);
		FUNC2(e, rar->file.e_mtime, 0);
	}

	if(flags & HAS_CTIME) {
		FUNC4(a, unix_time, &rar->file.e_ctime,
		    extra_data_size);
		FUNC1(e, rar->file.e_ctime, 0);
	}

	if(flags & HAS_ATIME) {
		FUNC4(a, unix_time, &rar->file.e_atime,
		    extra_data_size);
		FUNC0(e, rar->file.e_atime, 0);
	}

	if(flags & HAS_UNIX_NS) {
		if(!FUNC5(a, &rar->file.e_unix_ns))
			return ARCHIVE_EOF;

		*extra_data_size -= 4;
	}

	return ARCHIVE_OK;
}