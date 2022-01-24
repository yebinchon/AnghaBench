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
typedef  TYPE_1__* sdp_session_p ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_4__ {scalar_t__ s; struct TYPE_4__* rsp; struct TYPE_4__* req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int32_t
FUNC3(void *xss)
{
	sdp_session_p	ss = (sdp_session_p) xss;

	if (ss != NULL) {
		if (ss->s >= 0)
			FUNC0(ss->s);

		if (ss->req != NULL)
			FUNC1(ss->req);
		if (ss->rsp != NULL)
			FUNC1(ss->rsp);

		FUNC2(ss, 0, sizeof(*ss));
		FUNC1(ss);
	}

	return (0);
}