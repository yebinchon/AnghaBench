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
struct archive_entry {char* strmode; } ;
typedef  int mode_t ;

/* Variables and functions */
#define  AE_IFBLK 134 
#define  AE_IFCHR 133 
#define  AE_IFDIR 132 
#define  AE_IFIFO 131 
#define  AE_IFLNK 130 
#define  AE_IFREG 129 
#define  AE_IFSOCK 128 
 int S_ISGID ; 
 int S_ISUID ; 
 int S_ISVTX ; 
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/ * FUNC2 (struct archive_entry*) ; 
 int FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

const char *
FUNC5(struct archive_entry *entry)
{
	static const mode_t permbits[] =
	    { 0400, 0200, 0100, 0040, 0020, 0010, 0004, 0002, 0001 };
	char *bp = entry->strmode;
	mode_t mode;
	int i;

	/* Fill in a default string, then selectively override. */
	FUNC4(bp, "?rwxrwxrwx ");

	mode = FUNC3(entry);
	switch (FUNC1(entry)) {
	case AE_IFREG:  bp[0] = '-'; break;
	case AE_IFBLK:  bp[0] = 'b'; break;
	case AE_IFCHR:  bp[0] = 'c'; break;
	case AE_IFDIR:  bp[0] = 'd'; break;
	case AE_IFLNK:  bp[0] = 'l'; break;
	case AE_IFSOCK: bp[0] = 's'; break;
	case AE_IFIFO:  bp[0] = 'p'; break;
	default:
		if (FUNC2(entry) != NULL) {
			bp[0] = 'h';
			break;
		}
	}

	for (i = 0; i < 9; i++)
		if (!(mode & permbits[i]))
			bp[i+1] = '-';

	if (mode & S_ISUID) {
		if (mode & 0100) bp[3] = 's';
		else bp[3] = 'S';
	}
	if (mode & S_ISGID) {
		if (mode & 0010) bp[6] = 's';
		else bp[6] = 'S';
	}
	if (mode & S_ISVTX) {
		if (mode & 0001) bp[9] = 't';
		else bp[9] = 'T';
	}
	if (FUNC0(entry) != 0)
		bp[10] = '+';

	return (bp);
}