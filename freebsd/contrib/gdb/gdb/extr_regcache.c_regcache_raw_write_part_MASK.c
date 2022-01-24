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
struct regcache_descr {int nr_raw_registers; } ;
struct regcache {struct regcache_descr* descr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  regcache_raw_read ; 
 int /*<<< orphan*/  regcache_raw_write ; 
 int /*<<< orphan*/  FUNC1 (struct regcache*,int,int,int,int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2 (struct regcache *regcache, int regnum,
			 int offset, int len, const void *buf)
{
  struct regcache_descr *descr = regcache->descr;
  FUNC0 (regnum >= 0 && regnum < descr->nr_raw_registers);
  FUNC1 (regcache, regnum, offset, len, NULL, buf,
		      regcache_raw_read, regcache_raw_write);
}