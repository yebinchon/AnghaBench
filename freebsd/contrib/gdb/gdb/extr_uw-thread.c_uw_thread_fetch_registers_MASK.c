#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  fpregs; int /*<<< orphan*/  gregs; } ;
struct TYPE_7__ {TYPE_2__ uc_mcontext; } ;
struct thread_map {TYPE_3__ thr_ucontext; } ;
struct thread_info {TYPE_1__* private; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* to_fetch_registers ) (int) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  mapp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 TYPE_4__ base_ops ; 
 struct thread_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct thread_map*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6 (int regno)
{
  int called;
  struct thread_info *info;
  struct thread_map map;

  FUNC0 (base_ops.to_fetch_registers (regno), &called);
  if (called)
    return;

  if (!(info = FUNC1 (inferior_ptid)))
    return;
  if (!FUNC2 (info->private->mapp, &map))
    return;

  FUNC5 (&map.thr_ucontext.uc_mcontext.gregs);
  FUNC4 (&map.thr_ucontext.uc_mcontext.fpregs);
}