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
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 double FUNC2 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,double) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,scalar_t__) ; 

__attribute__((used)) static void
FUNC5 (struct type *type, int n,
				const char *from, char *to)
{
  if (FUNC1 (type) != FUNC0 (n))
    {
      double val = FUNC2 (from, FUNC1 (type));
      FUNC3 (to, FUNC0 (n), val);
    }
  else
    FUNC4 (to, from, FUNC0 (n));
}