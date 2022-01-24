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
typedef  scalar_t__ time_t ;

/* Variables and functions */
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC1 (unsigned long data_count, time_t start_time,
			     time_t end_time)
{
  FUNC0 (gdb_stdout, data_count, 
			      end_time - start_time, 0);
}