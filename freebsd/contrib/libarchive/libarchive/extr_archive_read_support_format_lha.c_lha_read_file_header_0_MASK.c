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
struct lha {unsigned char header_size; int /*<<< orphan*/  setflag; void* gid; void* uid; void* mode; void* mtime; void* crc; int /*<<< orphan*/  filename; void* origsize; void* compsize; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  CRC_IS_SET ; 
 int H0_COMP_SIZE_OFFSET ; 
 int H0_DOS_TIME_OFFSET ; 
 int H0_FILE_NAME_OFFSET ; 
 int H0_FIXED_SIZE ; 
 size_t H0_HEADER_SIZE_OFFSET ; 
 size_t H0_HEADER_SUM_OFFSET ; 
 size_t H0_NAME_LEN_OFFSET ; 
 int H0_ORIG_SIZE_OFFSET ; 
 int /*<<< orphan*/  UNIX_MODE_IS_SET ; 
 unsigned char* FUNC0 (struct archive_read*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*,int) ; 
 void* FUNC2 (unsigned char const*) ; 
 void* FUNC3 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 unsigned char FUNC6 (int /*<<< orphan*/ ,unsigned char const*,int,int) ; 
 void* FUNC7 (unsigned char const*) ; 
 int FUNC8 (struct archive_read*) ; 

__attribute__((used)) static int
FUNC9(struct archive_read *a, struct lha *lha)
{
	const unsigned char *p;
	int extdsize, namelen;
	unsigned char headersum, sum_calculated;

	if ((p = FUNC0(a, H0_FIXED_SIZE, NULL)) == NULL)
		return (FUNC8(a));
	lha->header_size = p[H0_HEADER_SIZE_OFFSET] + 2;
	headersum = p[H0_HEADER_SUM_OFFSET];
	lha->compsize = FUNC3(p + H0_COMP_SIZE_OFFSET);
	lha->origsize = FUNC3(p + H0_ORIG_SIZE_OFFSET);
	lha->mtime = FUNC7(p + H0_DOS_TIME_OFFSET);
	namelen = p[H0_NAME_LEN_OFFSET];
	extdsize = (int)lha->header_size - H0_FIXED_SIZE - namelen;
	if ((namelen > 221 || extdsize < 0) && extdsize != -2) {
		FUNC4(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Invalid LHa header");
		return (ARCHIVE_FATAL);
	}
	if ((p = FUNC0(a, lha->header_size, NULL)) == NULL)
		return (FUNC8(a));

	FUNC5(&lha->filename, p + H0_FILE_NAME_OFFSET, namelen);
	/* When extdsize == -2, A CRC16 value is not present in the header. */
	if (extdsize >= 0) {
		lha->crc = FUNC2(p + H0_FILE_NAME_OFFSET + namelen);
		lha->setflag |= CRC_IS_SET;
	}
	sum_calculated = FUNC6(0, p, 2, lha->header_size - 2);

	/* Read an extended header */
	if (extdsize > 0) {
		/* This extended data is set by 'LHa for UNIX' only.
		 * Maybe fixed size.
		 */
		p += H0_FILE_NAME_OFFSET + namelen + 2;
		if (p[0] == 'U' && extdsize == 12) {
			/* p[1] is a minor version. */
			lha->mtime = FUNC3(&p[2]);
			lha->mode = FUNC2(&p[6]);
			lha->uid = FUNC2(&p[8]);
			lha->gid = FUNC2(&p[10]);
			lha->setflag |= UNIX_MODE_IS_SET;
		}
	}
	FUNC1(a, lha->header_size);

	if (sum_calculated != headersum) {
		FUNC4(&a->archive, ARCHIVE_ERRNO_MISC,
		    "LHa header sum error");
		return (ARCHIVE_FATAL);
	}

	return (ARCHIVE_OK);
}