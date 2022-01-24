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
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  ptid_t ;

/* Variables and functions */
 int /*<<< orphan*/  do_restore_current_thread_cleanup ; 
 struct cleanup* FUNC0 (int /*<<< orphan*/ ,struct current_thread_cleanup*) ; 
 struct current_thread_cleanup* FUNC1 (int) ; 

__attribute__((used)) static struct cleanup *
FUNC2 (ptid_t inferior_ptid)
{
  struct current_thread_cleanup *old
    = FUNC1 (sizeof (struct current_thread_cleanup));
  old->inferior_ptid = inferior_ptid;
  return FUNC0 (do_restore_current_thread_cleanup, old);
}