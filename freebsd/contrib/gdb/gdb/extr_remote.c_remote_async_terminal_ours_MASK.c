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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  input_fd ; 
 int remote_async_terminal_ours_p ; 
 int /*<<< orphan*/  stdin_event_handler ; 
 int /*<<< orphan*/  sync_execution ; 

__attribute__((used)) static void
FUNC2 (void)
{
  /* See FIXME in remote_async_terminal_inferior. */
  if (!sync_execution)
    return;
  /* See FIXME in remote_async_terminal_inferior. */
  if (remote_async_terminal_ours_p)
    return;
  FUNC1 (NULL);
  FUNC0 (input_fd, stdin_event_handler, 0);
  remote_async_terminal_ours_p = 1;
}