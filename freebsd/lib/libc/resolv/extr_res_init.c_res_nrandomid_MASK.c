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
typedef  scalar_t__ u_int16_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  scalar_t__ u_char ;
struct timeval {int tv_sec; int tv_usec; } ;
typedef  TYPE_1__* res_state ;
struct TYPE_3__ {scalar_t__* _rnd; } ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*,int) ; 
 scalar_t__* srnd ; 

u_int
FUNC8(res_state statp) {
	struct timeval now;
	u_int16_t u16;
	MD5_CTX ctx;
	u_char *rnd = statp->_rnd == NULL ? srnd : statp->_rnd;

	FUNC6(&now, NULL);
	u16 = (u_int16_t) (now.tv_sec ^ now.tv_usec);
	FUNC7(rnd + 14, &u16, 2);
#ifndef HAVE_MD5
	FUNC4(&ctx);
	FUNC5(&ctx, rnd, 16);
	FUNC3(rnd, &ctx);
#else
	MD5Init(&ctx);
	MD5Update(&ctx, rnd, 16);
	MD5Final(rnd, &ctx);
#endif
	FUNC7(&u16, rnd + 14, 2);
	return ((u_int) u16);
}