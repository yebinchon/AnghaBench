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
typedef  scalar_t__ u_char ;
struct bootblock {int bpbFSInfo; int bpbBytesPerSec; int FSFree; int FSNext; } ;

/* Variables and functions */
 int DOSBOOTBLOCKSIZE ; 
 int FSFATAL ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,scalar_t__*,int) ; 
 int FUNC3 (int,scalar_t__*,int) ; 

int
FUNC4(int dosfs, struct bootblock *boot)
{
	u_char fsinfo[2 * DOSBOOTBLOCKSIZE];

	if (FUNC0(dosfs, boot->bpbFSInfo * boot->bpbBytesPerSec, SEEK_SET)
	    != boot->bpbFSInfo * boot->bpbBytesPerSec
	    || FUNC2(dosfs, fsinfo, sizeof fsinfo) != sizeof fsinfo) {
		FUNC1("could not read fsinfo block");
		return FSFATAL;
	}
	fsinfo[0x1e8] = (u_char)boot->FSFree;
	fsinfo[0x1e9] = (u_char)(boot->FSFree >> 8);
	fsinfo[0x1ea] = (u_char)(boot->FSFree >> 16);
	fsinfo[0x1eb] = (u_char)(boot->FSFree >> 24);
	fsinfo[0x1ec] = (u_char)boot->FSNext;
	fsinfo[0x1ed] = (u_char)(boot->FSNext >> 8);
	fsinfo[0x1ee] = (u_char)(boot->FSNext >> 16);
	fsinfo[0x1ef] = (u_char)(boot->FSNext >> 24);
	if (FUNC0(dosfs, boot->bpbFSInfo * boot->bpbBytesPerSec, SEEK_SET)
	    != boot->bpbFSInfo * boot->bpbBytesPerSec
	    || FUNC3(dosfs, fsinfo, sizeof fsinfo)
	    != sizeof fsinfo) {
		FUNC1("Unable to write bpbFSInfo");
		return FSFATAL;
	}
	/*
	 * Technically, we should return FSBOOTMOD here.
	 *
	 * However, since Win95 OSR2 (the first M$ OS that has
	 * support for FAT32) doesn't maintain the FSINFO block
	 * correctly, it has to be fixed pretty often.
	 *
	 * Therefor, we handle the FSINFO block only informally,
	 * fixing it if necessary, but otherwise ignoring the
	 * fact that it was incorrect.
	 */
	return 0;
}