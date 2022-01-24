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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(void)
{
	FUNC1(stderr,
	    "usage: %s [ -fsoptions ] special-device%s\n",
	    FUNC2(),
	    " [device-type]");
	FUNC1(stderr, "where fsoptions are:\n");
	FUNC1(stderr, "\t-E Erase previous disk content\n");
	FUNC1(stderr, "\t-J Enable journaling via gjournal\n");
	FUNC1(stderr, "\t-L volume label to add to superblock\n");
	FUNC1(stderr,
	    "\t-N do not create file system, just print out parameters\n");
	FUNC1(stderr, "\t-O file system format: 1 => UFS1, 2 => UFS2\n");
	FUNC1(stderr, "\t-R regression test, suppress random factors\n");
	FUNC1(stderr, "\t-S sector size\n");
	FUNC1(stderr, "\t-T disktype\n");
	FUNC1(stderr, "\t-U enable soft updates\n");
	FUNC1(stderr, "\t-a maximum contiguous blocks\n");
	FUNC1(stderr, "\t-b block size\n");
	FUNC1(stderr, "\t-c blocks per cylinders group\n");
	FUNC1(stderr, "\t-d maximum extent size\n");
	FUNC1(stderr, "\t-e maximum blocks per file in a cylinder group\n");
	FUNC1(stderr, "\t-f frag size\n");
	FUNC1(stderr, "\t-g average file size\n");
	FUNC1(stderr, "\t-h average files per directory\n");
	FUNC1(stderr, "\t-i number of bytes per inode\n");
	FUNC1(stderr, "\t-j enable soft updates journaling\n");
	FUNC1(stderr, "\t-k space to hold for metadata blocks\n");
	FUNC1(stderr, "\t-l enable multilabel MAC\n");
	FUNC1(stderr, "\t-n do not create .snap directory\n");
	FUNC1(stderr, "\t-m minimum free space %%\n");
	FUNC1(stderr, "\t-o optimization preference (`space' or `time')\n");
	FUNC1(stderr, "\t-p partition name (a..h)\n");
	FUNC1(stderr, "\t-r reserved sectors at the end of device\n");
	FUNC1(stderr, "\t-s file system size (sectors)\n");
	FUNC1(stderr, "\t-t enable TRIM\n");
	FUNC0(1);
}