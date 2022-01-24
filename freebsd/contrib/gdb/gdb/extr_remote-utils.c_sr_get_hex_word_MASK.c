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
 long FUNC0 (int) ; 

long
FUNC1 (void)
{
  long val;
  int j;

  val = 0;
  for (j = 0; j < 8; j++)
    val = (val << 4) + FUNC0 (j == 0);
  return val;
}