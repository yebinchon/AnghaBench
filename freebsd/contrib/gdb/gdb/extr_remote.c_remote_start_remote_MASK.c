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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  immediate_quit ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  remote_desc ; 
 int FUNC3 (struct ui_out*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (struct ui_out *uiout, void *dummy)
{
  immediate_quit++;		/* Allow user to interrupt it */

  /* Ack any packet which the remote side has already sent.  */
  FUNC4 (remote_desc, "+", 1);

  /* Let the stub know that we want it to return the thread.  */
  FUNC5 (-1, 0);

  inferior_ptid = FUNC2 (inferior_ptid);

  FUNC0 ();		/* Get text, data & bss offsets */

  FUNC1 ("?");			/* initiate a query from remote machine */
  immediate_quit--;

  /* NOTE: See comment above in remote_start_remote_dummy().  This
     function returns something >=0.  */
  return FUNC3 (uiout, dummy);
}