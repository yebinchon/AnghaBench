#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_7__ {scalar_t__ cch_magic; int /*<<< orphan*/  cch_flags; } ;
typedef  TYPE_1__ cap_channel_t ;

/* Variables and functions */
 scalar_t__ CAP_CHANNEL_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*) ; 

cap_channel_t *
FUNC10(const cap_channel_t *chan)
{
	cap_channel_t *newchan;
	nvlist_t *nvl;
	int newsock;

	FUNC0(chan != NULL);
	FUNC0(chan->cch_magic == CAP_CHANNEL_MAGIC);

	nvl = FUNC6(FUNC3(chan));
	FUNC5(nvl, "cmd", "clone");
	nvl = FUNC2(chan, nvl);
	if (nvl == NULL)
		return (NULL);
	if (FUNC8(nvl, "error") != 0) {
		errno = (int)FUNC8(nvl, "error");
		FUNC7(nvl);
		return (NULL);
	}
	newsock = FUNC9(nvl, "sock");
	FUNC7(nvl);
	newchan = FUNC1(newsock, chan->cch_flags);
	if (newchan == NULL) {
		int serrno;

		serrno = errno;
		FUNC4(newsock);
		errno = serrno;
	}

	return (newchan);
}