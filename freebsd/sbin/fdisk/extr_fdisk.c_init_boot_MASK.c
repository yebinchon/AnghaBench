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
struct stat {scalar_t__ st_size; } ;
struct TYPE_2__ {int bootinst_size; int /*<<< orphan*/ * bootinst; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 char* b_flag ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,struct stat*) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 TYPE_1__ mboot ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int) ; 
 int secsize ; 

__attribute__((used)) static void
FUNC8(void)
{
	const char *fname;
	int fdesc, n;
	struct stat sb;

	fname = b_flag ? b_flag : "/boot/mbr";
	if ((fdesc = FUNC6(fname, O_RDONLY)) == -1 ||
	    FUNC4(fdesc, &sb) == -1)
		FUNC1(1, "%s", fname);
	if (sb.st_size == 0)
		FUNC2(1, "%s is empty, must not be.", fname);
	if ((mboot.bootinst_size = sb.st_size) % secsize != 0)
		FUNC2(1, "%s: length must be a multiple of sector size", fname);
	if (mboot.bootinst != NULL)
		FUNC3(mboot.bootinst);
	if ((mboot.bootinst = FUNC5(mboot.bootinst_size = sb.st_size)) == NULL)
		FUNC2(1, "%s: unable to allocate read buffer", fname);
	if ((n = FUNC7(fdesc, mboot.bootinst, mboot.bootinst_size)) == -1 ||
	    FUNC0(fdesc))
		FUNC1(1, "%s", fname);
	if (n != mboot.bootinst_size)
		FUNC2(1, "%s: short read", fname);
}