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
struct TYPE_2__ {long obj_id; int* cstat; } ;
typedef  TYPE_1__ ses_objstat ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SESIOC_GETOBJSTAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 long FUNC5 (char*,char**,int /*<<< orphan*/ ) ; 

int
FUNC6(int a, char **v)
{
	int fd;
	int i;
	ses_objstat obj;
	long cvt;
	char *x;

	if (a != 3) {
usage:
		FUNC1(stderr, "usage: %s device objectid\n", *v);
		return (1);
	}
	fd = FUNC3(v[1], O_RDONLY);
	if (fd < 0) {
		FUNC4(v[1]);
		return (1);
	}
	x = v[2];
	cvt = FUNC5(v[2], &x, 0);
	if (x == v[2]) {
		goto usage;
	}
	obj.obj_id = cvt;
	if (FUNC2(fd, SESIOC_GETOBJSTAT, (caddr_t) &obj) < 0) {
		FUNC4("SESIOC_GETOBJSTAT");
		return (1);
	}
	FUNC1(stdout, "Object 0x%lx: 0x%x 0x%x 0x%x 0x%x\n", obj.obj_id,
	    obj.cstat[0], obj.cstat[1], obj.cstat[2], obj.cstat[3]);
	(void) FUNC0(fd);
	return (0);
}