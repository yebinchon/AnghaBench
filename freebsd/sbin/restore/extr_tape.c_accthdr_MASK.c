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
typedef  int /*<<< orphan*/  uintmax_t ;
struct s_spcl {int const c_type; long c_count; scalar_t__* c_addr; int c_inumber; scalar_t__ c_firstrec; } ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int ino_t ;

/* Variables and functions */
#define  TS_ADDR 132 
#define  TS_BITS 131 
#define  TS_CLRI 130 
#define  TS_END 129 
#define  TS_INODE 128 
 int const TS_TAPE ; 
 int blksread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ readmapflag ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC1(struct s_spcl *header)
{
	static ino_t previno = 0x7fffffff;
	static int prevtype;
	static long predict;
	long blks, i;

	if (header->c_type == TS_TAPE) {
		FUNC0(stderr, "Volume header ");
 		if (header->c_firstrec)
 			FUNC0(stderr, "begins with record %jd",
			    (intmax_t)header->c_firstrec);
 		FUNC0(stderr, "\n");
		previno = 0x7fffffff;
		return;
	}
	if (previno == 0x7fffffff)
		goto newcalc;
	switch (prevtype) {
	case TS_BITS:
		FUNC0(stderr, "Dumped inodes map header");
		break;
	case TS_CLRI:
		FUNC0(stderr, "Used inodes map header");
		break;
	case TS_INODE:
		FUNC0(stderr, "File header, ino %jd", (uintmax_t)previno);
		break;
	case TS_ADDR:
		FUNC0(stderr, "File continuation header, ino %jd",
		    (uintmax_t)previno);
		break;
	case TS_END:
		FUNC0(stderr, "End of tape header");
		break;
	}
	if (predict != blksread - 1)
		FUNC0(stderr, "; predicted %ld blocks, got %d blocks",
			predict, blksread - 1);
	FUNC0(stderr, "\n");
newcalc:
	blks = 0;
	if (header->c_type != TS_END)
		for (i = 0; i < header->c_count; i++)
			if (readmapflag || header->c_addr[i] != 0)
				blks++;
	predict = blks;
	blksread = 0;
	prevtype = header->c_type;
	previno = header->c_inumber;
}