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
struct TYPE_2__ {int has_blake2; int /*<<< orphan*/  blake2sp; } ;
struct rar5 {TYPE_1__ file; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (struct archive_read*,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_read*,int const,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_read*,size_t*,size_t*) ; 

__attribute__((used)) static int FUNC5(struct archive_read* a, struct rar5* rar,
    ssize_t* extra_data_size)
{
	size_t hash_type;
	size_t value_len;

	if(!FUNC4(a, &hash_type, &value_len))
		return ARCHIVE_EOF;

	*extra_data_size -= value_len;
	if(ARCHIVE_OK != FUNC1(a, value_len)) {
		return ARCHIVE_EOF;
	}

	enum HASH_TYPE {
		BLAKE2sp = 0x00
	};

	/* The file uses BLAKE2sp checksum algorithm instead of plain old
	 * CRC32. */
	if(hash_type == BLAKE2sp) {
		const uint8_t* p;
		const int hash_size = sizeof(rar->file.blake2sp);

		if(!FUNC3(a, hash_size, &p))
			return ARCHIVE_EOF;

		rar->file.has_blake2 = 1;
		FUNC2(&rar->file.blake2sp, p, hash_size);

		if(ARCHIVE_OK != FUNC1(a, hash_size)) {
			return ARCHIVE_EOF;
		}

		*extra_data_size -= hash_size;
	} else {
		FUNC0(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Unsupported hash type (0x%x)", (int) hash_type);
		return ARCHIVE_FATAL;
	}

	return ARCHIVE_OK;
}