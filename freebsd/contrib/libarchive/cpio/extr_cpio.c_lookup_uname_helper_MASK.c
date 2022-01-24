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
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {char* pw_name; } ;
struct cpio {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ id_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 struct passwd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct cpio *cpio, const char **name, id_t id)
{
	struct passwd	*pwent;

	(void)cpio; /* UNUSED */

	errno = 0;
	pwent = FUNC1((uid_t)id);
	if (pwent == NULL) {
		if (errno && errno != ENOENT)
			FUNC2(errno, "getpwuid(%s) failed",
			    FUNC0((int64_t)id));
		return 1;
	}

	*name = pwent->pw_name;
	return 0;
}