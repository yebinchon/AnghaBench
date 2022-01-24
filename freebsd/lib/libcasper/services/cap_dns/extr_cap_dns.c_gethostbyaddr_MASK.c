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
typedef  scalar_t__ socklen_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int NO_RECOVERY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int h_errno ; 
 int /*<<< orphan*/  hent ; 
 struct hostent* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 

struct hostent *
FUNC8(cap_channel_t *chan, const void *addr, socklen_t len,
    int type)
{
	struct hostent *hp;
	nvlist_t *nvl;

	nvl = FUNC5(0);
	FUNC4(nvl, "cmd", "gethostbyaddr");
	FUNC2(nvl, "addr", addr, (size_t)len);
	FUNC3(nvl, "family", (uint64_t)type);
	nvl = FUNC0(chan, nvl);
	if (nvl == NULL) {
		h_errno = NO_RECOVERY;
		return (NULL);
	}
	if (FUNC7(nvl, "error") != 0) {
		h_errno = (int)FUNC7(nvl, "error");
		FUNC6(nvl);
		return (NULL);
	}
	hp = FUNC1(nvl, &hent);
	FUNC6(nvl);
	return (hp);
}