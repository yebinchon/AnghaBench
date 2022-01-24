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
struct value {int dummy; } ;

/* Variables and functions */
 struct value* FUNC0 (struct value*) ; 
 struct value* all_values ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 

void
FUNC2 (struct value *mark)
{
  struct value *val;
  struct value *next;

  for (val = all_values; val && val != mark; val = next)
    {
      next = FUNC0 (val);
      FUNC1 (val);
    }
  all_values = val;
}