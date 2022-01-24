#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct ssh {int dummy; } ;
struct TYPE_9__ {struct TYPE_9__* val; struct TYPE_9__* name; } ;
struct TYPE_8__ {int ttyfd; size_t num_env; int /*<<< orphan*/  self; TYPE_6__* env; TYPE_6__* subsys; TYPE_6__* auth_proto; TYPE_6__* auth_data; TYPE_6__* auth_display; TYPE_6__* x11_chanids; TYPE_6__* display; TYPE_6__* term; TYPE_1__* pw; } ;
struct TYPE_7__ {int /*<<< orphan*/  pw_name; } ;
typedef  TYPE_2__ Session ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC5 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(struct ssh *ssh, Session *s)
{
	u_int i;

	FUNC6("Close session: user %s from %.200s port %d id %d",
	    s->pw->pw_name,
	    FUNC4(ssh),
	    FUNC5(ssh),
	    s->self);

	if (s->ttyfd != -1)
		FUNC2(s);
	FUNC0(s->term);
	FUNC0(s->display);
	FUNC0(s->x11_chanids);
	FUNC0(s->auth_display);
	FUNC0(s->auth_data);
	FUNC0(s->auth_proto);
	FUNC0(s->subsys);
	if (s->env != NULL) {
		for (i = 0; i < s->num_env; i++) {
			FUNC0(s->env[i].name);
			FUNC0(s->env[i].val);
		}
		FUNC0(s->env);
	}
	FUNC1(s);
	FUNC3(s->self);
}