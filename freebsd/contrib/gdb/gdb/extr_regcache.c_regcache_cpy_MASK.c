#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct regcache {scalar_t__ readonly_p; TYPE_1__* descr; } ;
struct TYPE_2__ {scalar_t__ gdbarch; } ;

/* Variables and functions */
 int /*<<< orphan*/  do_cooked_read ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct regcache*,struct regcache*) ; 
 int /*<<< orphan*/  FUNC2 (struct regcache*,int /*<<< orphan*/ ,struct regcache*) ; 
 int /*<<< orphan*/  FUNC3 (struct regcache*,int /*<<< orphan*/ ,struct regcache*) ; 

void
FUNC4 (struct regcache *dst, struct regcache *src)
{
  int i;
  char *buf;
  FUNC0 (src != NULL && dst != NULL);
  FUNC0 (src->descr->gdbarch == dst->descr->gdbarch);
  FUNC0 (src != dst);
  FUNC0 (src->readonly_p || dst->readonly_p);
  if (!src->readonly_p)
    FUNC3 (dst, do_cooked_read, src);
  else if (!dst->readonly_p)
    FUNC2 (dst, do_cooked_read, src);
  else
    FUNC1 (dst, src);
}