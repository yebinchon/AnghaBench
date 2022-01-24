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
typedef  scalar_t__ Int64_t ;
typedef  int Int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,long double) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,long double) ; 

int
FUNC2 (long double x)
{
#if LDBL_MANT_DIG == 113
  Int64_t msw;

  GET_LDOUBLE_MSW64 (msw, x);
  return msw < 0;
#else
  Int32_t e;

  FUNC0 (e, x);
  return e & 0x8000;
#endif
}