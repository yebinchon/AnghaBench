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
struct vfsoptlist {int dummy; } ;
struct prison {int dummy; } ;
typedef  int /*<<< orphan*/  jsys ;

/* Variables and functions */
 int JAIL_SYS_INHERIT ; 
 int /*<<< orphan*/  FUNC0 (struct prison*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct vfsoptlist*,char*,int*,int) ; 

__attribute__((used)) static int
FUNC2(void *obj, void *data)
{
	struct prison *pr = obj;
	struct vfsoptlist *opts = data;
	int jsys;

	if (FUNC1(opts, "linux", &jsys, sizeof(jsys)) == 0 &&
	    jsys == JAIL_SYS_INHERIT)
		return (0);
	/*
	 * Inherit a prison's initial values from its parent
	 * (different from JAIL_SYS_INHERIT which also inherits changes).
	 */
	FUNC0(pr, NULL);
	return (0);
}