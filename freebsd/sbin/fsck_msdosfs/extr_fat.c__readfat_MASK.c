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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct bootblock {int FATsecs; int bpbBytesPerSec; int bpbResSectors; } ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(int fs, struct bootblock *boot, u_int no, u_char **buffer)
{
	off_t off;

	*buffer = FUNC0(boot->FATsecs, boot->bpbBytesPerSec);
	if (*buffer == NULL) {
		FUNC3("No space for FAT sectors (%zu)",
		    (size_t)boot->FATsecs);
		return 0;
	}

	off = boot->bpbResSectors + no * boot->FATsecs;
	off *= boot->bpbBytesPerSec;

	if (FUNC2(fs, off, SEEK_SET) != off) {
		FUNC3("Unable to read FAT");
		goto err;
	}

	if ((size_t)FUNC4(fs, *buffer, boot->FATsecs * boot->bpbBytesPerSec)
	    != boot->FATsecs * boot->bpbBytesPerSec) {
		FUNC3("Unable to read FAT");
		goto err;
	}

	return 1;

    err:
	FUNC1(*buffer);
	return 0;
}