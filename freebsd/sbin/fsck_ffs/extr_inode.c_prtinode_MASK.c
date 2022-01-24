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
typedef  int /*<<< orphan*/  u_long ;
typedef  int time_t ;
struct passwd {char* pw_name; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 scalar_t__ UFS_ROOTINO ; 
 char* cdevname ; 
 char* FUNC1 (int*) ; 
 int /*<<< orphan*/  di_mode ; 
 int /*<<< orphan*/  di_mtime ; 
 int /*<<< orphan*/  di_size ; 
 int /*<<< orphan*/  di_uid ; 
 struct passwd* FUNC2 (int) ; 
 scalar_t__ maxino ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void
FUNC4(ino_t ino, union dinode *dp)
{
	char *p;
	struct passwd *pw;
	time_t t;

	FUNC3(" I=%lu ", (u_long)ino);
	if (ino < UFS_ROOTINO || ino > maxino)
		return;
	FUNC3(" OWNER=");
	if ((pw = FUNC2((int)FUNC0(dp, di_uid))) != NULL)
		FUNC3("%s ", pw->pw_name);
	else
		FUNC3("%u ", (unsigned)FUNC0(dp, di_uid));
	FUNC3("MODE=%o\n", FUNC0(dp, di_mode));
	if (preen)
		FUNC3("%s: ", cdevname);
	FUNC3("SIZE=%ju ", (uintmax_t)FUNC0(dp, di_size));
	t = FUNC0(dp, di_mtime);
	p = FUNC1(&t);
	FUNC3("MTIME=%12.12s %4.4s ", &p[4], &p[20]);
}