#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ti_tid; } ;
typedef  TYPE_1__ td_thrinfo_t ;
typedef  int /*<<< orphan*/  td_thrhandle_t ;
typedef  int /*<<< orphan*/  td_err_e ;
typedef  int /*<<< orphan*/  ptid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TD_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5 (const td_thrhandle_t *th, void *ignored)
{
  td_err_e retval;
  td_thrinfo_t ti;
  ptid_t ptid;

  if ((retval = FUNC4 (th, &ti)) != TD_OK)
    {
      return -1;
    }
  ptid = FUNC0 (ti.ti_tid, FUNC1 (inferior_ptid));
  if (!FUNC3 (ptid))
    FUNC2 (ptid);

  return 0;
}