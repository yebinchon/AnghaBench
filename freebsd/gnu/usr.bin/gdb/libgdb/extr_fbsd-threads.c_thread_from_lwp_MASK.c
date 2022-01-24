#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ti_tid; } ;
typedef  TYPE_1__ td_thrinfo_t ;
typedef  int /*<<< orphan*/  td_thrhandle_t ;
typedef  scalar_t__ td_err_e ;
typedef  int /*<<< orphan*/  ptid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ TD_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ fbsd_thread_active ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  thread_agent ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static ptid_t
FUNC10 (ptid_t ptid, td_thrhandle_t *th, td_thrinfo_t *ti)
{
  td_err_e err;
 
  FUNC6 (FUNC4 (ptid));

  if (fbsd_thread_active)
    {
      err = FUNC7 (thread_agent, FUNC2 (ptid), th);
      if (err == TD_OK)
        {
          err = FUNC8 (th, ti);
          if (err != TD_OK)
            FUNC5 ("Cannot get thread info: %s", FUNC9 (err));
          return FUNC1 (ti->ti_tid, FUNC3 (ptid));
        }
    }

  /* the LWP is not mapped to user thread */  
  return FUNC0 (FUNC2 (ptid), FUNC3 (ptid));
}