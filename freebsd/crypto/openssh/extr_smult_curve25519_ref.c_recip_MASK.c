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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*,unsigned int*,unsigned int const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,unsigned int const*) ; 

__attribute__((used)) static void FUNC2(unsigned int out[32],const unsigned int z[32])
{
  unsigned int z2[32];
  unsigned int z9[32];
  unsigned int z11[32];
  unsigned int z2_5_0[32];
  unsigned int z2_10_0[32];
  unsigned int z2_20_0[32];
  unsigned int z2_50_0[32];
  unsigned int z2_100_0[32];
  unsigned int t0[32];
  unsigned int t1[32];
  int i;

  /* 2 */ FUNC1(z2,z);
  /* 4 */ FUNC1(t1,z2);
  /* 8 */ FUNC1(t0,t1);
  /* 9 */ FUNC0(z9,t0,z);
  /* 11 */ FUNC0(z11,z9,z2);
  /* 22 */ FUNC1(t0,z11);
  /* 2^5 - 2^0 = 31 */ FUNC0(z2_5_0,t0,z9);

  /* 2^6 - 2^1 */ FUNC1(t0,z2_5_0);
  /* 2^7 - 2^2 */ FUNC1(t1,t0);
  /* 2^8 - 2^3 */ FUNC1(t0,t1);
  /* 2^9 - 2^4 */ FUNC1(t1,t0);
  /* 2^10 - 2^5 */ FUNC1(t0,t1);
  /* 2^10 - 2^0 */ FUNC0(z2_10_0,t0,z2_5_0);

  /* 2^11 - 2^1 */ FUNC1(t0,z2_10_0);
  /* 2^12 - 2^2 */ FUNC1(t1,t0);
  /* 2^20 - 2^10 */ for (i = 2;i < 10;i += 2) { FUNC1(t0,t1); FUNC1(t1,t0); }
  /* 2^20 - 2^0 */ FUNC0(z2_20_0,t1,z2_10_0);

  /* 2^21 - 2^1 */ FUNC1(t0,z2_20_0);
  /* 2^22 - 2^2 */ FUNC1(t1,t0);
  /* 2^40 - 2^20 */ for (i = 2;i < 20;i += 2) { FUNC1(t0,t1); FUNC1(t1,t0); }
  /* 2^40 - 2^0 */ FUNC0(t0,t1,z2_20_0);

  /* 2^41 - 2^1 */ FUNC1(t1,t0);
  /* 2^42 - 2^2 */ FUNC1(t0,t1);
  /* 2^50 - 2^10 */ for (i = 2;i < 10;i += 2) { FUNC1(t1,t0); FUNC1(t0,t1); }
  /* 2^50 - 2^0 */ FUNC0(z2_50_0,t0,z2_10_0);

  /* 2^51 - 2^1 */ FUNC1(t0,z2_50_0);
  /* 2^52 - 2^2 */ FUNC1(t1,t0);
  /* 2^100 - 2^50 */ for (i = 2;i < 50;i += 2) { FUNC1(t0,t1); FUNC1(t1,t0); }
  /* 2^100 - 2^0 */ FUNC0(z2_100_0,t1,z2_50_0);

  /* 2^101 - 2^1 */ FUNC1(t1,z2_100_0);
  /* 2^102 - 2^2 */ FUNC1(t0,t1);
  /* 2^200 - 2^100 */ for (i = 2;i < 100;i += 2) { FUNC1(t1,t0); FUNC1(t0,t1); }
  /* 2^200 - 2^0 */ FUNC0(t1,t0,z2_100_0);

  /* 2^201 - 2^1 */ FUNC1(t0,t1);
  /* 2^202 - 2^2 */ FUNC1(t1,t0);
  /* 2^250 - 2^50 */ for (i = 2;i < 50;i += 2) { FUNC1(t0,t1); FUNC1(t1,t0); }
  /* 2^250 - 2^0 */ FUNC0(t0,t1,z2_50_0);

  /* 2^251 - 2^1 */ FUNC1(t1,t0);
  /* 2^252 - 2^2 */ FUNC1(t0,t1);
  /* 2^253 - 2^3 */ FUNC1(t1,t0);
  /* 2^254 - 2^4 */ FUNC1(t0,t1);
  /* 2^255 - 2^5 */ FUNC1(t1,t0);
  /* 2^255 - 21 */ FUNC0(out,t1,z11);
}