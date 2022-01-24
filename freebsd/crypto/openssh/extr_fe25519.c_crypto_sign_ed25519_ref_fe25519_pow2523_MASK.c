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
typedef  int /*<<< orphan*/  const fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

void FUNC2(fe25519 *r, const fe25519 *x)
{
	fe25519 z2;
	fe25519 z9;
	fe25519 z11;
	fe25519 z2_5_0;
	fe25519 z2_10_0;
	fe25519 z2_20_0;
	fe25519 z2_50_0;
	fe25519 z2_100_0;
	fe25519 t;
	int i;
		
	/* 2 */ FUNC1(&z2,x);
	/* 4 */ FUNC1(&t,&z2);
	/* 8 */ FUNC1(&t,&t);
	/* 9 */ FUNC0(&z9,&t,x);
	/* 11 */ FUNC0(&z11,&z9,&z2);
	/* 22 */ FUNC1(&t,&z11);
	/* 2^5 - 2^0 = 31 */ FUNC0(&z2_5_0,&t,&z9);

	/* 2^6 - 2^1 */ FUNC1(&t,&z2_5_0);
	/* 2^10 - 2^5 */ for (i = 1;i < 5;i++) { FUNC1(&t,&t); }
	/* 2^10 - 2^0 */ FUNC0(&z2_10_0,&t,&z2_5_0);

	/* 2^11 - 2^1 */ FUNC1(&t,&z2_10_0);
	/* 2^20 - 2^10 */ for (i = 1;i < 10;i++) { FUNC1(&t,&t); }
	/* 2^20 - 2^0 */ FUNC0(&z2_20_0,&t,&z2_10_0);

	/* 2^21 - 2^1 */ FUNC1(&t,&z2_20_0);
	/* 2^40 - 2^20 */ for (i = 1;i < 20;i++) { FUNC1(&t,&t); }
	/* 2^40 - 2^0 */ FUNC0(&t,&t,&z2_20_0);

	/* 2^41 - 2^1 */ FUNC1(&t,&t);
	/* 2^50 - 2^10 */ for (i = 1;i < 10;i++) { FUNC1(&t,&t); }
	/* 2^50 - 2^0 */ FUNC0(&z2_50_0,&t,&z2_10_0);

	/* 2^51 - 2^1 */ FUNC1(&t,&z2_50_0);
	/* 2^100 - 2^50 */ for (i = 1;i < 50;i++) { FUNC1(&t,&t); }
	/* 2^100 - 2^0 */ FUNC0(&z2_100_0,&t,&z2_50_0);

	/* 2^101 - 2^1 */ FUNC1(&t,&z2_100_0);
	/* 2^200 - 2^100 */ for (i = 1;i < 100;i++) { FUNC1(&t,&t); }
	/* 2^200 - 2^0 */ FUNC0(&t,&t,&z2_100_0);

	/* 2^201 - 2^1 */ FUNC1(&t,&t);
	/* 2^250 - 2^50 */ for (i = 1;i < 50;i++) { FUNC1(&t,&t); }
	/* 2^250 - 2^0 */ FUNC0(&t,&t,&z2_50_0);

	/* 2^251 - 2^1 */ FUNC1(&t,&t);
	/* 2^252 - 2^2 */ FUNC1(&t,&t);
	/* 2^252 - 3 */ FUNC0(r,&t,x);
}