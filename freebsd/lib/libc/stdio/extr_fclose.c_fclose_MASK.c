#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ _flags; } ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  errno ; 

int
FUNC3(FILE *fp)
{
	int r;

	if (fp->_flags == 0) {	/* not open! */
		errno = EBADF;
		return (EOF);
	}

	FUNC0(fp);
	r = FUNC2(fp, true);
	FUNC1();

	return (r);
}