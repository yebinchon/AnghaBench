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
typedef  int /*<<< orphan*/  ptid_t ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;

/* Variables and functions */
 scalar_t__ event_loop_p ; 
 int /*<<< orphan*/  inferior_event_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int target_executing ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void
FUNC4 (ptid_t ptid, int step, enum target_signal siggnal)
{
  FUNC0 (ptid, step, siggnal);

  /* We are about to start executing the inferior, let's register it
     with the event loop. NOTE: this is the one place where all the
     execution commands end up. We could alternatively do this in each
     of the execution commands in infcmd.c.*/
  /* FIXME: ezannoni 1999-09-28: We may need to move this out of here
     into infcmd.c in order to allow inferior function calls to work
     NOT asynchronously. */
  if (event_loop_p && FUNC2 ())
    FUNC1 (inferior_event_handler, 0);
  /* Tell the world that the target is now executing. */
  /* FIXME: cagney/1999-09-23: Is it the targets responsibility to set
     this?  Instead, should the client of target just assume (for
     async targets) that the target is going to start executing?  Is
     this information already found in the continuation block?  */
  if (FUNC3 ())
    target_executing = 1;
}