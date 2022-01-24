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
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*) ; 

cap_channel_t *
FUNC11(const cap_channel_t *chan, const char *name)
{
	cap_channel_t *newchan;
	nvlist_t *nvl;
	int sock, error;
	int flags;

	sock = -1;

	nvl = FUNC6(FUNC3(chan));
	FUNC5(nvl, "cmd", "open");
	FUNC5(nvl, "service", name);
	nvl = FUNC2(chan, nvl);
	if (nvl == NULL)
		return (NULL);
	error = (int)FUNC8(nvl, "error");
	if (error != 0) {
		FUNC7(nvl);
		errno = error;
		return (NULL);
	}
	sock = FUNC9(nvl, "chanfd");
	flags = FUNC10(nvl, "chanflags");
	FUNC0(sock >= 0);
	FUNC7(nvl);
	nvl = NULL;
	newchan = FUNC1(sock, flags);
	if (newchan == NULL)
		goto fail;
	return (newchan);
fail:
	error = errno;
	FUNC4(sock);
	errno = error;
	return (NULL);
}