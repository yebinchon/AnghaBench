#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
typedef  scalar_t__ u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
typedef  TYPE_1__* res_state ;
struct TYPE_3__ {int /*<<< orphan*/ * _rnd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/ * srnd ; 

void
FUNC3(res_state statp)
{
	struct timeval now;
	u_int32_t u32;
	u_int16_t u16;
	u_char *rnd = statp->_rnd == NULL ? srnd : statp->_rnd;

	FUNC1(&now, NULL);
	u32 = now.tv_sec;
	FUNC2(rnd, &u32, 4);
	u32 = now.tv_usec;
	FUNC2(rnd + 4, &u32, 4);
	u32 += now.tv_sec;
	FUNC2(rnd + 8, &u32, 4);
	u16 = FUNC0();
	FUNC2(rnd + 12, &u16, 2);
}