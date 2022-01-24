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
 int SSH_TUNID_ANY ; 
 int SSH_TUNID_ERR ; 
 int /*<<< orphan*/  SSH_TUNID_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 char* FUNC2 (char*,char) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 char* FUNC4 (char const*) ; 

int
FUNC5(const char *s, int *remote)
{
	const char *errstr = NULL;
	char *sp, *ep;
	int tun;

	if (remote != NULL) {
		*remote = SSH_TUNID_ANY;
		sp = FUNC4(s);
		if ((ep = FUNC2(sp, ':')) == NULL) {
			FUNC0(sp);
			return (FUNC5(s, NULL));
		}
		ep[0] = '\0'; ep++;
		*remote = FUNC5(ep, NULL);
		tun = FUNC5(sp, NULL);
		FUNC0(sp);
		return (*remote == SSH_TUNID_ERR ? *remote : tun);
	}

	if (FUNC1(s, "any") == 0)
		return (SSH_TUNID_ANY);

	tun = FUNC3(s, 0, SSH_TUNID_MAX, &errstr);
	if (errstr != NULL)
		return (SSH_TUNID_ERR);

	return (tun);
}