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
struct process_info {int dummy; } ;
struct inferior_list_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PT_DETACH ; 
 struct process_info* FUNC0 (struct thread_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct process_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (struct inferior_list_entry *entry)
{
  struct thread_info *thread = (struct thread_info *) entry;
  struct process_info *process = FUNC0 (thread);

  FUNC2 (PT_DETACH, FUNC1 (process), 0, 0);
}