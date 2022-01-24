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
typedef  scalar_t__ uintmax_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static uintmax_t
FUNC2 (uintmax_t a, uintmax_t b)
{
  uintmax_t sum = a + b;
  if (sum < a)
    FUNC1 (2, 0, FUNC0("input is too large to count"));
  return sum;
}