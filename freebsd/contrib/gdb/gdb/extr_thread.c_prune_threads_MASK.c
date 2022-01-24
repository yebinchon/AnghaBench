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
struct thread_info {int /*<<< orphan*/  ptid; struct thread_info* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct thread_info*) ; 
 struct thread_info* thread_list ; 

__attribute__((used)) static void
FUNC2 (void)
{
  struct thread_info *tp, *next;

  for (tp = thread_list; tp; tp = next)
    {
      next = tp->next;
      if (!FUNC1 (tp))
	FUNC0 (tp->ptid);
    }
}