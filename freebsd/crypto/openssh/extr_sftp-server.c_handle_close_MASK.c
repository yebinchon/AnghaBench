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
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  dirp; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  HANDLE_DIR ; 
 int /*<<< orphan*/  HANDLE_FILE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* handles ; 

__attribute__((used)) static int
FUNC5(int handle)
{
	int ret = -1;

	if (FUNC3(handle, HANDLE_FILE)) {
		ret = FUNC0(handles[handle].fd);
		FUNC2(handles[handle].name);
		FUNC4(handle);
	} else if (FUNC3(handle, HANDLE_DIR)) {
		ret = FUNC1(handles[handle].dirp);
		FUNC2(handles[handle].name);
		FUNC4(handle);
	} else {
		errno = ENOENT;
	}
	return ret;
}