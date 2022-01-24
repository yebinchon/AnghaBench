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
struct regcache {struct regcache* register_valid_p; struct regcache* registers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regcache*) ; 

void
FUNC1 (struct regcache *regcache)
{
  if (regcache == NULL)
    return;
  FUNC0 (regcache->registers);
  FUNC0 (regcache->register_valid_p);
  FUNC0 (regcache);
}