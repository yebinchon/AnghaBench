#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  bytes_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  HANDLE_FILE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* handles ; 

__attribute__((used)) static void
FUNC1(int handle, ssize_t bytes)
{
	if (FUNC0(handle, HANDLE_FILE) && bytes > 0)
		handles[handle].bytes_read += bytes;
}