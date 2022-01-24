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
struct thread_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  find_thread_lwp_callback ; 
 struct thread_info* FUNC0 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static struct thread_info *
FUNC1 (int lwpid)
{
  return FUNC0 (find_thread_lwp_callback, (void *)lwpid);
}