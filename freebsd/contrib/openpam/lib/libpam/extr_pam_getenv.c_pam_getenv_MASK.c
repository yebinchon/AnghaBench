#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ ** env; } ;
typedef  TYPE_1__ pam_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (TYPE_1__*,char const*,size_t) ; 

const char *
FUNC3(pam_handle_t *pamh,
	const char *name)
{
	size_t len;
	int i;

	FUNC0(name);
	for (len = 0; name[len] != '\0'; ++len) {
		if (name[len] == '=') {
			errno = EINVAL;
			FUNC1(NULL);
		}
	}
	if ((i = FUNC2(pamh, name, len)) < 0)
		FUNC1(NULL);
	/* assert(pamh->env[i][len] == '='); */
	FUNC1(pamh->env[i] + len + 1);
}