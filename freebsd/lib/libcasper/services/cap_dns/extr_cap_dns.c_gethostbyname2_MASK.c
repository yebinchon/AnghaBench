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
typedef  int /*<<< orphan*/  uint64_t ;
struct hostent {int dummy; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int NO_RECOVERY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int h_errno ; 
 int /*<<< orphan*/  hent ; 
 struct hostent* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 

struct hostent *
FUNC7(cap_channel_t *chan, const char *name, int type)
{
	struct hostent *hp;
	nvlist_t *nvl;

	nvl = FUNC4(0);
	FUNC3(nvl, "cmd", "gethostbyname");
	FUNC2(nvl, "family", (uint64_t)type);
	FUNC3(nvl, "name", name);
	nvl = FUNC0(chan, nvl);
	if (nvl == NULL) {
		h_errno = NO_RECOVERY;
		return (NULL);
	}
	if (FUNC6(nvl, "error") != 0) {
		h_errno = (int)FUNC6(nvl, "error");
		FUNC5(nvl);
		return (NULL);
	}

	hp = FUNC1(nvl, &hent);
	FUNC5(nvl);
	return (hp);
}