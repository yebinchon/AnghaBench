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
typedef  int /*<<< orphan*/  compiler_state_t ;

/* Variables and functions */
 int ISO10589_ISIS ; 
 int ISO8473_CLNP ; 
 int ISO9542_ESIS ; 
 int PROTO_UNDEF ; 
#define  Q_DEFAULT 132 
#define  Q_IP 131 
#define  Q_IPV6 130 
#define  Q_ISO 129 
#define  Q_LINK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static int
FUNC5(compiler_state_t *cstate, const char *name, int proto)
{
	register int v;

	switch (proto) {

	case Q_DEFAULT:
	case Q_IP:
	case Q_IPV6:
		v = FUNC3(name);
		if (v == PROTO_UNDEF)
			FUNC0(cstate, "unknown ip proto '%s'", name);
		break;

	case Q_LINK:
		/* XXX should look up h/w protocol type based on cstate->linktype */
		v = FUNC1(name);
		if (v == PROTO_UNDEF) {
			v = FUNC2(name);
			if (v == PROTO_UNDEF)
				FUNC0(cstate, "unknown ether proto '%s'", name);
		}
		break;

	case Q_ISO:
		if (FUNC4(name, "esis") == 0)
			v = ISO9542_ESIS;
		else if (FUNC4(name, "isis") == 0)
			v = ISO10589_ISIS;
		else if (FUNC4(name, "clnp") == 0)
			v = ISO8473_CLNP;
		else
			FUNC0(cstate, "unknown osi proto '%s'", name);
		break;

	default:
		v = PROTO_UNDEF;
		break;
	}
	return v;
}