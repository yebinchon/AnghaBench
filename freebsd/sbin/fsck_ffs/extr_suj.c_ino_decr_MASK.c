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
typedef  union dinode {int dummy; } dinode ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union dinode*,int /*<<< orphan*/ ,int) ; 
 int IFDIR ; 
 int IFMT ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  di_mode ; 
 int /*<<< orphan*/  di_nlink ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 union dinode* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (union dinode*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC7(ino_t ino)
{
	union dinode *ip;
	int reqlink;
	int nlink;
	int mode;

	ip = FUNC4(ino);
	nlink = FUNC0(ip, di_nlink);
	mode = FUNC0(ip, di_mode);
	if (nlink < 1)
		FUNC2("Inode %d link count %d invalid\n", ino, nlink);
	if (mode == 0)
		FUNC2("Inode %d has a link of %d with 0 mode\n", ino, nlink);
	nlink--;
	if ((mode & IFMT) == IFDIR)
		reqlink = 2;
	else
		reqlink = 1;
	if (nlink < reqlink) {
		if (debug)
			FUNC6("ino %ju not enough links to live %d < %d\n",
			    (uintmax_t)ino, nlink, reqlink);
		FUNC5(ip, ino, mode);
		return;
	}
	FUNC1(ip, di_nlink, nlink);
	FUNC3(ino);
}