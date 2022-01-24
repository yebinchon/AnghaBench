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
struct udftestargs {int /*<<< orphan*/  ta_imgpath; int /*<<< orphan*/  ta_devpath; } ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (struct udftestargs*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(const atf_tc_t *tc, void *buf)
{
	int res;
	struct udftestargs *args = buf;

	res = FUNC1(args->ta_devpath);
	if (res != 0) {
		errno = res;
		return -1;
	}

	res = FUNC2(args->ta_imgpath);
	if (res != 0)
		return res;

	FUNC0(args);

	return 0;
}