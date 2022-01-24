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
struct regcache {TYPE_1__* descr; int /*<<< orphan*/  readonly_p; } ;
struct TYPE_2__ {int nr_raw_registers; int /*<<< orphan*/ * sizeof_register; scalar_t__ legacy_p; } ;

/* Variables and functions */
 struct regcache* current_regcache ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct regcache*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  registers_ptid ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void
FUNC8 (struct regcache *regcache, int regnum, void *buf)
{
  FUNC0 (regcache != NULL && buf != NULL);
  FUNC0 (regnum >= 0 && regnum < regcache->descr->nr_raw_registers);
  if (regcache->descr->legacy_p
      && !regcache->readonly_p)
    {
      FUNC0 (regcache == current_regcache);
      /* For moment, just use underlying legacy code.  Ulgh!!! This
	 silently and very indirectly updates the regcache's regcache
	 via the global deprecated_register_valid[].  */
      FUNC1 (regnum, buf);
      return;
    }
  /* Make certain that the register cache is up-to-date with respect
     to the current thread.  This switching shouldn't be necessary
     only there is still only one target side register cache.  Sigh!
     On the bright side, at least there is a regcache object.  */
  if (!regcache->readonly_p)
    {
      FUNC0 (regcache == current_regcache);
      if (! FUNC3 (registers_ptid, inferior_ptid))
	{
	  FUNC6 ();
	  registers_ptid = inferior_ptid;
	}
      if (!FUNC5 (regnum))
	FUNC7 (regnum);
    }
  /* Copy the value directly into the register cache.  */
  FUNC2 (buf, FUNC4 (regcache, regnum),
	  regcache->descr->sizeof_register[regnum]);
}