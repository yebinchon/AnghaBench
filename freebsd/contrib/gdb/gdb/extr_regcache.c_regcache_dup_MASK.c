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
struct regcache {TYPE_1__* descr; } ;
struct TYPE_2__ {int /*<<< orphan*/  gdbarch; } ;

/* Variables and functions */
 int /*<<< orphan*/ * current_regcache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct regcache*,struct regcache*) ; 
 struct regcache* FUNC2 (int /*<<< orphan*/ ) ; 

struct regcache *
FUNC3 (struct regcache *src)
{
  struct regcache *newbuf;
  FUNC0 (current_regcache != NULL);
  newbuf = FUNC2 (src->descr->gdbarch);
  FUNC1 (newbuf, src);
  return newbuf;
}