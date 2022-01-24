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
struct ssh {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * auth_data; int /*<<< orphan*/ * auth_proto; int /*<<< orphan*/  screen; int /*<<< orphan*/  single_connection; int /*<<< orphan*/  self; } ;
typedef  TYPE_1__ Session ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ssh*,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct ssh *ssh, Session *s)
{
	int success;

	if (s->auth_proto != NULL || s->auth_data != NULL) {
		FUNC0("session_x11_req: session %d: "
		    "x11 forwarding already active", s->self);
		return 0;
	}
	s->single_connection = FUNC3();
	s->auth_proto = FUNC5(NULL);
	s->auth_data = FUNC5(NULL);
	s->screen = FUNC4();
	FUNC2();

	if (FUNC7(s->auth_proto) &&
	    FUNC7(s->auth_data))
		success = FUNC6(ssh, s);
	else {
		success = 0;
		FUNC0("Invalid X11 forwarding data");
	}
	if (!success) {
		FUNC1(s->auth_proto);
		FUNC1(s->auth_data);
		s->auth_proto = NULL;
		s->auth_data = NULL;
	}
	return success;
}