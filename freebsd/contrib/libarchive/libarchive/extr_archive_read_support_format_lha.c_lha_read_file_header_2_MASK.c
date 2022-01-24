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
struct lha {scalar_t__ header_size; scalar_t__ header_crc; int /*<<< orphan*/  setflag; void* crc; void* mtime; void* origsize; void* compsize; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  CRC_IS_SET ; 
 int H2_COMP_SIZE_OFFSET ; 
 int H2_CRC_OFFSET ; 
 scalar_t__ H2_FIXED_SIZE ; 
 int H2_HEADER_SIZE_OFFSET ; 
 int H2_ORIG_SIZE_OFFSET ; 
 int H2_TIME_OFFSET ; 
 unsigned char* FUNC0 (struct archive_read*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*,int) ; 
 void* FUNC2 (unsigned char const*) ; 
 void* FUNC3 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (scalar_t__,unsigned char const*,int) ; 
 int FUNC6 (struct archive_read*,struct lha*,scalar_t__*,int,scalar_t__,size_t*) ; 
 int FUNC7 (struct archive_read*) ; 

__attribute__((used)) static int
FUNC8(struct archive_read *a, struct lha *lha)
{
	const unsigned char *p;
	size_t extdsize;
	int err, padding;
	uint16_t header_crc;

	if ((p = FUNC0(a, H2_FIXED_SIZE, NULL)) == NULL)
		return (FUNC7(a));

	lha->header_size =FUNC2(p + H2_HEADER_SIZE_OFFSET);
	lha->compsize = FUNC3(p + H2_COMP_SIZE_OFFSET);
	lha->origsize = FUNC3(p + H2_ORIG_SIZE_OFFSET);
	lha->mtime = FUNC3(p + H2_TIME_OFFSET);
	lha->crc = FUNC2(p + H2_CRC_OFFSET);
	lha->setflag |= CRC_IS_SET;

	if (lha->header_size < H2_FIXED_SIZE) {
		FUNC4(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Invalid LHa header size");
		return (ARCHIVE_FATAL);
	}

	header_crc = FUNC5(0, p, H2_FIXED_SIZE);
	FUNC1(a, H2_FIXED_SIZE);

	/* Read extended headers */
	err = FUNC6(a, lha, &header_crc, 2,
		  lha->header_size - H2_FIXED_SIZE, &extdsize);
	if (err < ARCHIVE_WARN)
		return (err);

	/* Calculate a padding size. The result will be normally 0 or 1. */
	padding = (int)lha->header_size - (int)(H2_FIXED_SIZE + extdsize);
	if (padding > 0) {
		if ((p = FUNC0(a, padding, NULL)) == NULL)
			return (FUNC7(a));
		header_crc = FUNC5(header_crc, p, padding);
		FUNC1(a, padding);
	}

	if (header_crc != lha->header_crc) {
		FUNC4(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "LHa header CRC error");
		return (ARCHIVE_FATAL);
	}
	return (err);
}