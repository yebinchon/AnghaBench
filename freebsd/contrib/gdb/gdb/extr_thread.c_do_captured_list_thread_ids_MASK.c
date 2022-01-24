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
struct ui_out {int dummy; } ;
struct thread_info {int num; struct thread_info* next; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int GDB_RC_OK ; 
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 struct cleanup* FUNC1 (struct ui_out*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct thread_info* thread_list ; 
 int /*<<< orphan*/  FUNC4 (struct ui_out*,char*,int) ; 

__attribute__((used)) static int
FUNC5 (struct ui_out *uiout, void *arg)
{
  struct thread_info *tp;
  int num = 0;
  struct cleanup *cleanup_chain;

  FUNC2 ();
  FUNC3 ();

  cleanup_chain = FUNC1 (uiout, "thread-ids");

  for (tp = thread_list; tp; tp = tp->next)
    {
      num++;
      FUNC4 (uiout, "thread-id", tp->num);
    }

  FUNC0 (cleanup_chain);
  FUNC4 (uiout, "number-of-threads", num);
  return GDB_RC_OK;
}