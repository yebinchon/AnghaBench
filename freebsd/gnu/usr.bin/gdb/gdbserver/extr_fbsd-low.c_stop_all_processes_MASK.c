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
 int /*<<< orphan*/  all_processes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  send_sigstop ; 
 int stopping_threads ; 
 int /*<<< orphan*/  wait_for_sigstop ; 

__attribute__((used)) static void
FUNC1 (void)
{
  stopping_threads = 1;
  FUNC0 (&all_processes, send_sigstop);
  FUNC0 (&all_processes, wait_for_sigstop);
  stopping_threads = 0;
}