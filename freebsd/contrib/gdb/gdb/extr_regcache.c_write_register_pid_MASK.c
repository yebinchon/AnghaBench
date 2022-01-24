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
typedef  int /*<<< orphan*/  ptid_t ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

void
FUNC2 (int regnum, CORE_ADDR val, ptid_t ptid)
{
  ptid_t save_ptid;

  if (FUNC0 (ptid, inferior_ptid))
    {
      FUNC1 (regnum, val);
      return;
    }

  save_ptid = inferior_ptid;

  inferior_ptid = ptid;

  FUNC1 (regnum, val);

  inferior_ptid = save_ptid;
}