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
struct TYPE_4__ {int flags; int ioDone; int ioTotal; scalar_t__ ioErrno; int /*<<< orphan*/  timer; int /*<<< orphan*/  iovCurCount; int /*<<< orphan*/  iovCur; } ;
typedef  TYPE_1__ evStream ;
typedef  int /*<<< orphan*/  evContext ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int EV_STR_TIMEROK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(evContext opaqueCtx, void *uap, int fd, int evmask) {
	evStream *str = uap;
	int bytes;

	FUNC0(evmask);

	bytes = FUNC4(fd, str->iovCur, str->iovCurCount);
	if (bytes > 0) {
		if ((str->flags & EV_STR_TIMEROK) != 0)
			FUNC3(opaqueCtx, str->timer);
		FUNC1(str, bytes);
	} else {
		if (bytes < 0 && errno != EINTR) {
			str->ioDone = -1;
			str->ioErrno = errno;
		}
	}
	if (str->ioDone == -1 || str->ioDone == str->ioTotal)
		FUNC2(opaqueCtx, str);
}