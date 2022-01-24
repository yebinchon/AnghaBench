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
 long double FUNC0 (long double) ; 
 long double FUNC1 (long double) ; 

long double
FUNC2(long double x, long double y)
{
  long double s = FUNC0(x) + FUNC0(y);
  if (s == 0.0L)
    return s;
  x /= s; y /= s;
  return s * FUNC1(x * x + y * y);
}