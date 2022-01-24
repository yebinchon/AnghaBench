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
struct thread_info {TYPE_1__* private; } ;
struct TYPE_2__ {scalar_t__ mapp; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct thread_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  notice_thread ; 
 scalar_t__ thr_map_main ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static CORE_ADDR
FUNC4 (void)
{
  if (!thr_map_main)
    {
      struct thread_info *info;
      FUNC3 (notice_thread, (void *)1);
      if ((info = FUNC2 (FUNC0 (FUNC1 (inferior_ptid), 1))))
	thr_map_main = info->private->mapp;
    }
  return thr_map_main;
}