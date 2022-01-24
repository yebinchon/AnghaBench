#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  TYPE_1__* res_state ;
struct TYPE_4__ {unsigned int options; } ;

/* Variables and functions */
 unsigned int RES_INIT ; 
 TYPE_1__ _res ; 
 int FUNC0 () ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int) ; 

int
FUNC2(const u_char *buf, int buflen, u_char *ans, int anssiz) {
	res_state statp = &_res;
	if ((statp->options & RES_INIT) == 0U && FUNC0() == -1) {
		/* errno should have been set by res_init() in this case. */
		return (-1);
	}

	return (FUNC1(statp, buf, buflen, ans, anssiz));
}