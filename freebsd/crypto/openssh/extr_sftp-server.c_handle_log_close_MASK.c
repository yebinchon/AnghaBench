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
 int /*<<< orphan*/  HANDLE_FILE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC5(int handle, char *emsg)
{
	if (FUNC2(handle, HANDLE_FILE)) {
		FUNC4("%s%sclose \"%s\" bytes read %llu written %llu",
		    emsg == NULL ? "" : emsg, emsg == NULL ? "" : " ",
		    FUNC3(handle),
		    (unsigned long long)FUNC0(handle),
		    (unsigned long long)FUNC1(handle));
	} else {
		FUNC4("%s%sclosedir \"%s\"",
		    emsg == NULL ? "" : emsg, emsg == NULL ? "" : " ",
		    FUNC3(handle));
	}
}