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
struct parse {int dummy; } ;
typedef  int /*<<< orphan*/  dummy ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ IMPL_XNTPD ; 
 scalar_t__ IMPL_XNTPD_OLD ; 
 int INFO_ERR_IMPL ; 
 int /*<<< orphan*/  REQ_REREAD_KEYS ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t*,size_t*,char const**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ impl_ver ; 

__attribute__((used)) static void
FUNC2(
	struct parse *pcmd,
	FILE *fp
	)
{
	size_t items;
	size_t itemsize;
	const char *dummy;
	int res;

again:
	res = FUNC0(impl_ver, REQ_REREAD_KEYS, 1, 0, 0, (char *)0,
		      &items, &itemsize, &dummy, 0, sizeof(dummy));
	
	if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
		impl_ver = IMPL_XNTPD_OLD;
		goto again;
	}

	if (res == 0)
	    (void) FUNC1(fp, "done!\n");
	return;
}