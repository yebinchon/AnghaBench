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
struct lha {scalar_t__ header_size; int crc; scalar_t__ header_crc; int /*<<< orphan*/  setflag; void* mtime; void* origsize; void* compsize; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  CRC_IS_SET ; 
 int H3_COMP_SIZE_OFFSET ; 
 int H3_CRC_OFFSET ; 
 int H3_FIELD_LEN_OFFSET ; 
 scalar_t__ H3_FIXED_SIZE ; 
 int H3_HEADER_SIZE_OFFSET ; 
 int H3_ORIG_SIZE_OFFSET ; 
 int H3_TIME_OFFSET ; 
 unsigned char* FUNC0 (struct archive_read*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*,scalar_t__) ; 
 int FUNC2 (unsigned char const*) ; 
 void* FUNC3 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned char const*,scalar_t__) ; 
 int FUNC6 (struct archive_read*,struct lha*,scalar_t__*,int,scalar_t__,size_t*) ; 
 int FUNC7 (struct archive_read*) ; 

__attribute__((used)) static int
FUNC8(struct archive_read *a, struct lha *lha)
{
	const unsigned char *p;
	size_t extdsize;
	int err;
	uint16_t header_crc;

	if ((p = FUNC0(a, H3_FIXED_SIZE, NULL)) == NULL)
		return (FUNC7(a));

	if (FUNC2(p + H3_FIELD_LEN_OFFSET) != 4)
		goto invalid;
	lha->header_size =FUNC3(p + H3_HEADER_SIZE_OFFSET);
	lha->compsize = FUNC3(p + H3_COMP_SIZE_OFFSET);
	lha->origsize = FUNC3(p + H3_ORIG_SIZE_OFFSET);
	lha->mtime = FUNC3(p + H3_TIME_OFFSET);
	lha->crc = FUNC2(p + H3_CRC_OFFSET);
	lha->setflag |= CRC_IS_SET;

	if (lha->header_size < H3_FIXED_SIZE + 4)
		goto invalid;
	header_crc = FUNC5(0, p, H3_FIXED_SIZE);
	FUNC1(a, H3_FIXED_SIZE);

	/* Read extended headers */
	err = FUNC6(a, lha, &header_crc, 4,
		  lha->header_size - H3_FIXED_SIZE, &extdsize);
	if (err < ARCHIVE_WARN)
		return (err);

	if (header_crc != lha->header_crc) {
		FUNC4(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "LHa header CRC error");
		return (ARCHIVE_FATAL);
	}
	return (err);
invalid:
	FUNC4(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
	    "Invalid LHa header");
	return (ARCHIVE_FATAL);
}