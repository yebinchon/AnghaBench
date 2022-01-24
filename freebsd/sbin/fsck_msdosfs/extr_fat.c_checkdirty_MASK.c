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
typedef  int u_char ;
struct bootblock {scalar_t__ ClustMask; size_t bpbResSectors; size_t bpbBytesPerSec; int bpbMedia; } ;
typedef  size_t off_t ;

/* Variables and functions */
 scalar_t__ CLUST16_MASK ; 
 scalar_t__ CLUST32_MASK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 size_t FUNC1 (int,size_t,int /*<<< orphan*/ ) ; 
 int* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int,int*,size_t) ; 

int
FUNC5(int fs, struct bootblock *boot)
{
	off_t off;
	u_char *buffer;
	int ret = 0;
	size_t len;

	if (boot->ClustMask != CLUST16_MASK && boot->ClustMask != CLUST32_MASK)
		return 0;

	off = boot->bpbResSectors;
	off *= boot->bpbBytesPerSec;

	buffer = FUNC2(len = boot->bpbBytesPerSec);
	if (buffer == NULL) {
		FUNC3("No space for FAT sectors (%zu)", len);
		return 1;
	}

	if (FUNC1(fs, off, SEEK_SET) != off) {
		FUNC3("Unable to read FAT");
		goto err;
	}

	if ((size_t)FUNC4(fs, buffer, boot->bpbBytesPerSec) !=
	    boot->bpbBytesPerSec) {
		FUNC3("Unable to read FAT");
		goto err;
	}

	/*
	 * If we don't understand the FAT, then the file system must be
	 * assumed to be unclean.
	 */
	if (buffer[0] != boot->bpbMedia || buffer[1] != 0xff)
		goto err;
	if (boot->ClustMask == CLUST16_MASK) {
		if ((buffer[2] & 0xf8) != 0xf8 || (buffer[3] & 0x3f) != 0x3f)
			goto err;
	} else {
		if (buffer[2] != 0xff || (buffer[3] & 0x0f) != 0x0f
		    || (buffer[4] & 0xf8) != 0xf8 || buffer[5] != 0xff
		    || buffer[6] != 0xff || (buffer[7] & 0x03) != 0x03)
			goto err;
	}

	/*
	 * Now check the actual clean flag (and the no-error flag).
	 */
	if (boot->ClustMask == CLUST16_MASK) {
		if ((buffer[3] & 0xc0) == 0xc0)
			ret = 1;
	} else {
		if ((buffer[7] & 0x0c) == 0x0c)
			ret = 1;
	}

err:
	FUNC0(buffer);
	return ret;
}