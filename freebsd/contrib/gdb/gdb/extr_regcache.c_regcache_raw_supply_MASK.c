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
struct regcache {int* register_valid_p; TYPE_1__* descr; int /*<<< orphan*/  readonly_p; } ;
struct TYPE_2__ {int nr_raw_registers; size_t* sizeof_register; } ;

/* Variables and functions */
 struct regcache* current_regcache ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct regcache*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  registers_ptid ; 

void
FUNC6 (struct regcache *regcache, int regnum, const void *buf)
{
  void *regbuf;
  size_t size;

  FUNC0 (regcache != NULL);
  FUNC0 (regnum >= 0 && regnum < regcache->descr->nr_raw_registers);
  FUNC0 (!regcache->readonly_p);

  /* FIXME: kettenis/20030828: It shouldn't be necessary to handle
     CURRENT_REGCACHE specially here.  */
  if (regcache == current_regcache
      && !FUNC3 (registers_ptid, inferior_ptid))
    {
      FUNC5 ();
      registers_ptid = inferior_ptid;
    }

  regbuf = FUNC4 (regcache, regnum);
  size = regcache->descr->sizeof_register[regnum];

  if (buf)
    FUNC1 (regbuf, buf, size);
  else
    FUNC2 (regbuf, 0, size);

  /* Mark the register as cached.  */
  regcache->register_valid_p[regnum] = 1;
}