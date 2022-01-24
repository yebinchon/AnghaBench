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
struct thread_info {int /*<<< orphan*/  entry; } ;
struct inferior_list_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  all_threads ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct inferior_list_entry*) ; 

void
FUNC2 (struct thread_info *thread)
{
  FUNC1 (&all_threads, (struct inferior_list_entry *) thread);
  FUNC0 (&thread->entry);
}