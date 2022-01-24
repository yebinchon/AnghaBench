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
struct thread_info {int /*<<< orphan*/  ptid; } ;

/* Variables and functions */
 int GDB_RC_OK ; 
 int /*<<< orphan*/  deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct thread_info* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct thread_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct ui_out*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ui_out*,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13 (struct ui_out *uiout, void *tidstr)
{
  int num;
  struct thread_info *tp;

  num = FUNC12 (FUNC3 (tidstr));

  tp = FUNC1 (num);

  if (!tp)
    FUNC0 ("Thread ID %d not known.", num);

  if (!FUNC9 (tp))
    FUNC0 ("Thread ID %d has terminated.\n", num);

  FUNC6 (tp->ptid);

  FUNC11 (uiout, "[Switching to thread ");
  FUNC10 (uiout, "new-thread-id", FUNC4 (inferior_ptid));
  FUNC11 (uiout, " (");
#if defined(HPUXHPPA)
  ui_out_text (uiout, target_tid_to_str (inferior_ptid));
#else
  FUNC11 (uiout, FUNC7 (inferior_ptid));
#endif
  FUNC11 (uiout, ")]");

  FUNC5 (deprecated_selected_frame,
		     FUNC2 (deprecated_selected_frame), 1);
  return GDB_RC_OK;
}