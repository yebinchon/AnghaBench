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
typedef  int /*<<< orphan*/  ptid_t ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_2__ {int /*<<< orphan*/  (* to_resume ) (int /*<<< orphan*/ ,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ base_ops ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (ptid_t ptid, int step, enum target_signal signo)
{
  if (FUNC1 (ptid) > 0)
    {
      ptid = FUNC5 (ptid);
      if (FUNC3 (ptid, null_ptid))
	ptid = FUNC2 (-1);
    }

  FUNC0 (base_ops.to_resume (ptid, step, signo));
}