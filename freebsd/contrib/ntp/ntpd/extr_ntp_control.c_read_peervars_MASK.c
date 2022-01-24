#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int u_char ;
struct peer {scalar_t__ num_events; } ;
struct ctl_var {int flags; size_t code; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CERR_BADASSOC ; 
 int /*<<< orphan*/  CERR_UNKNOWNVAR ; 
 size_t FUNC0 (int*) ; 
 int /*<<< orphan*/  CP_MAXCODE ; 
 int EOV ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ctl_var* FUNC5 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC6 (int,struct peer*) ; 
 int /*<<< orphan*/  FUNC7 (struct peer*) ; 
 int* def_peer_var ; 
 struct peer* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  peer_var ; 
 int /*<<< orphan*/  res_associd ; 
 scalar_t__ res_authokay ; 
 TYPE_1__ rpkt ; 

__attribute__((used)) static void
FUNC10(void)
{
	const struct ctl_var *v;
	struct peer *peer;
	const u_char *cp;
	size_t i;
	char *	valuep;
	u_char	wants[CP_MAXCODE + 1];
	u_int	gotvar;

	/*
	 * Wants info for a particular peer. See if we know
	 * the guy.
	 */
	peer = FUNC8(res_associd);
	if (NULL == peer) {
		FUNC3(CERR_BADASSOC);
		return;
	}
	rpkt.status = FUNC9(FUNC7(peer));
	if (res_authokay)
		peer->num_events = 0;
	FUNC2(wants);
	gotvar = 0;
	while (NULL != (v = FUNC5(peer_var, &valuep))) {
		if (v->flags & EOV) {
			FUNC3(CERR_UNKNOWNVAR);
			return;
		}
		FUNC1(v->code < FUNC0(wants));
		wants[v->code] = 1;
		gotvar = 1;
	}
	if (gotvar) {
		for (i = 1; i < FUNC0(wants); i++)
			if (wants[i])
				FUNC6(i, peer);
	} else
		for (cp = def_peer_var; *cp != 0; cp++)
			FUNC6((int)*cp, peer);
	FUNC4(0);
}