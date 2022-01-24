#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct ssh {int dummy; } ;
struct TYPE_8__ {size_t num_accept_env; int /*<<< orphan*/ * accept_env; } ;
struct TYPE_7__ {char* name; char* val; } ;
struct TYPE_6__ {int num_env; TYPE_2__* env; } ;
typedef  TYPE_1__ Session ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_5__ options ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (size_t*) ; 
 TYPE_2__* FUNC5 (TYPE_2__*,int,int,int) ; 

__attribute__((used)) static int
FUNC6(struct ssh *ssh, Session *s)
{
	char *name, *val;
	u_int name_len, val_len, i;

	name = FUNC4(&name_len);
	val = FUNC4(&val_len);
	FUNC3();

	/* Don't set too many environment variables */
	if (s->num_env > 128) {
		FUNC0("Ignoring env request %s: too many env vars", name);
		goto fail;
	}

	for (i = 0; i < options.num_accept_env; i++) {
		if (FUNC2(name, options.accept_env[i])) {
			FUNC0("Setting env %d: %s=%s", s->num_env, name, val);
			s->env = FUNC5(s->env, s->num_env,
			    s->num_env + 1, sizeof(*s->env));
			s->env[s->num_env].name = name;
			s->env[s->num_env].val = val;
			s->num_env++;
			return (1);
		}
	}
	FUNC0("Ignoring env request %s: disallowed name", name);

 fail:
	FUNC1(name);
	FUNC1(val);
	return (0);
}