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
struct inferior_regcache_data {struct inferior_regcache_data* registers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inferior_regcache_data*) ; 

void
FUNC1 (void *regcache_p)
{
  struct inferior_regcache_data *regcache
    = (struct inferior_regcache_data *) regcache_p;

  FUNC0 (regcache->registers);
  FUNC0 (regcache);
}