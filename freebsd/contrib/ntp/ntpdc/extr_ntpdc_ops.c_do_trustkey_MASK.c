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
typedef  int /*<<< orphan*/  u_long ;
struct parse {size_t nargs; TYPE_1__* argval; } ;
typedef  int /*<<< orphan*/  dummy ;
struct TYPE_2__ {int /*<<< orphan*/  uval; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ IMPL_XNTPD ; 
 scalar_t__ IMPL_XNTPD_OLD ; 
 int INFO_ERR_IMPL ; 
 int MAXARGS ; 
 int FUNC0 (scalar_t__,int,int,int,int,char*,size_t*,size_t*,char const**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ impl_ver ; 

__attribute__((used)) static void
FUNC2(
	struct parse *pcmd,
	FILE *fp,
	int req
	)
{
	u_long keyids[MAXARGS];
	size_t i;
	size_t items;
	size_t itemsize;
	const char *dummy;
	int ritems;
	int res;

	ritems = 0;
	for (i = 0; i < pcmd->nargs; i++) {
		keyids[ritems++] = pcmd->argval[i].uval;
	}

again:
	res = FUNC0(impl_ver, req, 1, ritems, sizeof(u_long),
		      (char *)keyids, &items, &itemsize, &dummy, 0, 
		      sizeof(dummy));
	
	if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
		impl_ver = IMPL_XNTPD_OLD;
		goto again;
	}

	if (res == 0)
	    (void) FUNC1(fp, "done!\n");
	return;
}