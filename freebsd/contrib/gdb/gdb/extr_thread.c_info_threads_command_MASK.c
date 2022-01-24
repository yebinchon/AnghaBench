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
struct thread_info {int /*<<< orphan*/  ptid; int /*<<< orphan*/  num; struct thread_info* next; } ;
struct frame_info {int dummy; } ;
typedef  int /*<<< orphan*/  ptid_t ;

/* Variables and functions */
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct frame_info* FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 (struct thread_info*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 struct thread_info* thread_list ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static void
FUNC18 (char *arg, int from_tty)
{
  struct thread_info *tp;
  ptid_t current_ptid;
  struct frame_info *cur_frame;
  int saved_frame_level = FUNC2 (FUNC3 ());
  int counter;
  char *extra_info;

  /* Check that there really is a frame.  This happens when a simulator
     is connected but not loaded or running, for instance.  */
  if (FUNC4 (current_gdbarch) && saved_frame_level < 0)
    FUNC0 ("No frame.");

  FUNC7 ();
  FUNC14 ();
  current_ptid = inferior_ptid;
  for (tp = thread_list; tp; tp = tp->next)
    {
      if (FUNC8 (tp->ptid, current_ptid))
	FUNC6 ("* ");
      else
	FUNC6 ("  ");

#ifdef HPUXHPPA
      printf_filtered ("%d %s", tp->num, target_tid_to_str (tp->ptid));
#else
      FUNC6 ("%d %s", tp->num, FUNC15 (tp->ptid));
#endif

      extra_info = FUNC13 (tp);
      if (extra_info)
	FUNC6 (" (%s)", extra_info);
      FUNC9 ("  ");

      FUNC12 (tp->ptid);
      FUNC5 (FUNC3 (), -1, 0);
    }

  FUNC12 (current_ptid);

  /* Code below copied from "up_silently_base" in "stack.c".
   * It restores the frame set by the user before the "info threads"
   * command.  We have finished the info-threads display by switching
   * back to the current thread.  That switch has put us at the top
   * of the stack (leaf frame).
   */
  counter = saved_frame_level;
  cur_frame = FUNC1 (FUNC3 (), &counter);
  if (counter != 0)
    {
      /* Ooops, can't restore, tell user where we are. */
      FUNC17 ("Couldn't restore frame in current thread, at frame 0");
      FUNC5 (FUNC3 (), -1, 0);
    }
  else
    {
      FUNC10 (cur_frame);
    }

  /* re-show current frame. */
  FUNC11 (cur_frame);
}