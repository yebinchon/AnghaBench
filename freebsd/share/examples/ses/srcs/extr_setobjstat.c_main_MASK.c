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
struct TYPE_2__ {long elm_idx; long* cstat; } ;
typedef  TYPE_1__ encioc_elm_status_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENCIOC_SETELMSTAT ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 long FUNC5 (char*,char**,int /*<<< orphan*/ ) ; 

int
FUNC6(int a, char **v)
{
	int fd;
	int i;
	encioc_elm_status_t obj;
	long cvt;
	char *x;

	if (a != 7) {
usage:
		FUNC1(stderr,
		    "usage: %s device objectid stat0 stat1 stat2 stat3\n", *v);
		return (1);
	}
	fd = FUNC3(v[1], O_RDWR);
	if (fd < 0) {
		FUNC4(v[1]);
		return (1);
	}
	x = v[2];
	cvt = FUNC5(v[2], &x, 0);
	if (x == v[2]) {
		goto usage;
	}
	obj.elm_idx = cvt;
	for (i = 0; i < 4; i++) {
		x = v[3 + i];
		cvt = FUNC5(v[3 + i],  &x, 0);
		if (x == v[3 + i]) {
			goto usage;
		}
		obj.cstat[i] = cvt;
	}
	if (FUNC2(fd, ENCIOC_SETELMSTAT, (caddr_t) &obj) < 0) {
		FUNC4("ENCIOC_SETELMSTAT");
	}
	(void) FUNC0(fd);
	return (0);
}