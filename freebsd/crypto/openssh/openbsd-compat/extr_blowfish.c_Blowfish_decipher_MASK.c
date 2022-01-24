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
typedef  int u_int32_t ;
struct TYPE_3__ {int** S; int* P; } ;
typedef  TYPE_1__ blf_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int,int,int) ; 

void
FUNC1(blf_ctx *c, u_int32_t *xl, u_int32_t *xr)
{
	u_int32_t Xl;
	u_int32_t Xr;
	u_int32_t *s = c->S[0];
	u_int32_t *p = c->P;

	Xl = *xl;
	Xr = *xr;

	Xl ^= p[17];
	FUNC0(s, p, Xr, Xl, 16); FUNC0(s, p, Xl, Xr, 15);
	FUNC0(s, p, Xr, Xl, 14); FUNC0(s, p, Xl, Xr, 13);
	FUNC0(s, p, Xr, Xl, 12); FUNC0(s, p, Xl, Xr, 11);
	FUNC0(s, p, Xr, Xl, 10); FUNC0(s, p, Xl, Xr, 9);
	FUNC0(s, p, Xr, Xl, 8); FUNC0(s, p, Xl, Xr, 7);
	FUNC0(s, p, Xr, Xl, 6); FUNC0(s, p, Xl, Xr, 5);
	FUNC0(s, p, Xr, Xl, 4); FUNC0(s, p, Xl, Xr, 3);
	FUNC0(s, p, Xr, Xl, 2); FUNC0(s, p, Xl, Xr, 1);

	*xl = Xr ^ p[0];
	*xr = Xl;
}