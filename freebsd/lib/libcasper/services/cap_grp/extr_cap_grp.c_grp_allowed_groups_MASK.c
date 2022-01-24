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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTCAPABLE ; 
#define  NV_TYPE_NUMBER 129 
#define  NV_TYPE_STRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/  const*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/  const*,int*,void**) ; 

__attribute__((used)) static int
FUNC4(const nvlist_t *oldlimits, const nvlist_t *newlimits)
{
	const char *name, *gname;
	void *cookie;
	gid_t gid;
	int type;

	cookie = NULL;
	while ((name = FUNC3(newlimits, &type, &cookie)) != NULL) {
		switch (type) {
		case NV_TYPE_NUMBER:
			gid = (gid_t)FUNC1(newlimits, name);
			gname = NULL;
			break;
		case NV_TYPE_STRING:
			gid = (gid_t)-1;
			gname = FUNC2(newlimits, name);
			break;
		default:
			return (EINVAL);
		}
		if (!FUNC0(oldlimits, gname, gid))
			return (ENOTCAPABLE);
	}

	return (0);
}