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
struct current_thread_cleanup {int /*<<< orphan*/  inferior_ptid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct current_thread_cleanup*) ; 

__attribute__((used)) static void
FUNC2 (void *arg)
{
  struct current_thread_cleanup *old = arg;
  FUNC0 (old->inferior_ptid);
  FUNC1 (old);
}