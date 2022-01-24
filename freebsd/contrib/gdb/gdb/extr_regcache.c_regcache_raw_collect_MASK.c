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
struct TYPE_2__ {int nr_raw_registers; size_t* sizeof_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,size_t) ; 
 void* FUNC2 (struct regcache const*,int) ; 

void
FUNC3 (const struct regcache *regcache, int regnum, void *buf)
{
  const void *regbuf;
  size_t size;

  FUNC0 (regcache != NULL && buf != NULL);
  FUNC0 (regnum >= 0 && regnum < regcache->descr->nr_raw_registers);

  regbuf = FUNC2 (regcache, regnum);
  size = regcache->descr->sizeof_register[regnum];
  FUNC1 (buf, regbuf, size);
}