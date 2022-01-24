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
struct thread_info {int /*<<< orphan*/  ptid; } ;
typedef  int /*<<< orphan*/  ptid_t ;

/* Variables and functions */
 struct thread_info* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

ptid_t
FUNC2 (int num)
{
  struct thread_info *thread = FUNC0 (num);
  if (thread)
    return thread->ptid;
  else
    return FUNC1 (-1);
}