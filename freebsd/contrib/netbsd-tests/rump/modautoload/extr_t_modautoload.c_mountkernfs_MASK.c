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
typedef  int /*<<< orphan*/  old_autoload ;
typedef  int /*<<< orphan*/  new_autoload ;

/* Variables and functions */
 int /*<<< orphan*/  MOUNT_KERNFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int*,size_t*,int*,size_t) ; 

__attribute__((used)) static void
FUNC7(void)
{
	bool old_autoload, new_autoload;
	size_t old_len, new_len;
	int error;

	if (!FUNC3())
		FUNC1("host kernel modules not supported");

	FUNC2();

	if (FUNC4("/kern", 0777) == -1)
		FUNC0("mkdir /kern");

	new_autoload = true;
	old_len = sizeof(old_autoload);
	new_len = sizeof(new_autoload);
	error = FUNC6("kern.module.autoload",
				  &old_autoload, &old_len,
				  &new_autoload, new_len);
	if (error != 0)
		FUNC0("could not enable module autoload");

	if (FUNC5(MOUNT_KERNFS, "/kern", 0, NULL, 0) == -1)
		FUNC0("could not mount kernfs");
}