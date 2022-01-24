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
struct inferior_list_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct thread_info* FUNC2 (struct inferior_list_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread_info*) ; 

__attribute__((used)) static void
FUNC4 (struct inferior_list_entry *inf)
{
  struct thread_info *thread = FUNC2 (inf);
  FUNC1 (FUNC3 (thread));
  FUNC0 (thread);
}