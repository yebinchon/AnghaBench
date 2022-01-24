#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  valid; int /*<<< orphan*/ * pw; } ;
struct TYPE_5__ {int chanid; int /*<<< orphan*/  self; int /*<<< orphan*/ * pw; TYPE_2__* authctxt; } ;
typedef  TYPE_1__ Session ;
typedef  TYPE_2__ Authctxt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 

int
FUNC4(Authctxt *authctxt, int chanid)
{
	Session *s = FUNC3();
	FUNC0("session_open: channel %d", chanid);
	if (s == NULL) {
		FUNC1("no more sessions");
		return 0;
	}
	s->authctxt = authctxt;
	s->pw = authctxt->pw;
	if (s->pw == NULL || !authctxt->valid)
		FUNC2("no user for session %d", s->self);
	FUNC0("session_open: session %d: link with channel %d", s->self, chanid);
	s->chanid = chanid;
	return 1;
}