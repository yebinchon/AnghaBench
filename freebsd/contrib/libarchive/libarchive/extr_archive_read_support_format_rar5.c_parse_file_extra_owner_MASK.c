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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
struct archive_read {int dummy; } ;
struct archive_entry {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  la_int64_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 scalar_t__ ARCHIVE_OK ; 
 int OWNER_GROUP_GID ; 
 int OWNER_GROUP_NAME ; 
 int OWNER_MAXNAMELEN ; 
 int OWNER_USER_NAME ; 
 int OWNER_USER_UID ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,char*) ; 
 scalar_t__ FUNC4 (struct archive_read*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_read*,size_t,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_read*,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_read*,size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct archive_read* a,
    struct archive_entry* e, ssize_t* extra_data_size)
{
	uint64_t flags = 0;
	uint64_t value_size = 0;
	uint64_t id = 0;
	size_t name_len = 0;
	size_t name_size = 0;
	char namebuf[OWNER_MAXNAMELEN];
	const uint8_t* p;

	if(!FUNC7(a, &flags, &value_size))
		return ARCHIVE_EOF;
	if(ARCHIVE_OK != FUNC4(a, (int64_t)value_size))
		return ARCHIVE_EOF;
	*extra_data_size -= value_size;

	if ((flags & OWNER_USER_NAME) != 0) {
		if(!FUNC8(a, &name_size, NULL))
			return ARCHIVE_EOF;
		*extra_data_size -= name_size + 1;

		if(!FUNC6(a, name_size, &p))
			return ARCHIVE_EOF;

		if (name_size >= OWNER_MAXNAMELEN) {
			name_len = OWNER_MAXNAMELEN - 1;
		} else {
			name_len = name_size;
		}

		FUNC5(namebuf, p, name_len);
		namebuf[name_len] = 0;
		if(ARCHIVE_OK != FUNC4(a, (int64_t)name_size))
			return ARCHIVE_EOF;

		FUNC3(e, namebuf);
	}
	if ((flags & OWNER_GROUP_NAME) != 0) {
		if(!FUNC8(a, &name_size, NULL))
			return ARCHIVE_EOF;
		*extra_data_size -= name_size + 1;

		if(!FUNC6(a, name_size, &p))
			return ARCHIVE_EOF;

		if (name_size >= OWNER_MAXNAMELEN) {
			name_len = OWNER_MAXNAMELEN - 1;
		} else {
			name_len = name_size;
		}

		FUNC5(namebuf, p, name_len);
		namebuf[name_len] = 0;
		if(ARCHIVE_OK != FUNC4(a, (int64_t)name_size))
			return ARCHIVE_EOF;

		FUNC1(e, namebuf);
	}
	if ((flags & OWNER_USER_UID) != 0) {
		if(!FUNC7(a, &id, &value_size))
			return ARCHIVE_EOF;
		if(ARCHIVE_OK != FUNC4(a, (int64_t)value_size))
			return ARCHIVE_EOF;
		*extra_data_size -= value_size;

		FUNC2(e, (la_int64_t)id);
	}
	if ((flags & OWNER_GROUP_GID) != 0) {
		if(!FUNC7(a, &id, &value_size))
			return ARCHIVE_EOF;
		if(ARCHIVE_OK != FUNC4(a, (int64_t)value_size))
			return ARCHIVE_EOF;
		*extra_data_size -= value_size;

		FUNC0(e, (la_int64_t)id);
	}
	return ARCHIVE_OK;
}