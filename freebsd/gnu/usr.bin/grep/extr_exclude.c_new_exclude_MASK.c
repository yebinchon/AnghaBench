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
struct exclude {int exclude_alloc; char const** exclude; scalar_t__ exclude_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

struct exclude *
FUNC1 (void)
{
  struct exclude *ex = (struct exclude *) FUNC0 (sizeof (struct exclude));
  ex->exclude_count = 0;
  ex->exclude_alloc = 64;
  ex->exclude = (char const **) FUNC0 (ex->exclude_alloc * sizeof (char *));
  return ex;
}