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
struct svc_callout {scalar_t__ sc_prog; scalar_t__ sc_vers; int /*<<< orphan*/ * sc_netid; struct svc_callout* sc_next; } ;
typedef  scalar_t__ rpcvers_t ;
typedef  scalar_t__ rpcprog_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 
 struct svc_callout* svc_head ; 

__attribute__((used)) static struct svc_callout *
FUNC2(rpcprog_t prog, rpcvers_t vers, struct svc_callout **prev,
    char *netid)
{
	struct svc_callout *s, *p;

	FUNC0(prev != NULL);

	p = NULL;
	for (s = svc_head; s != NULL; s = s->sc_next) {
		if (((s->sc_prog == prog) && (s->sc_vers == vers)) &&
		    ((netid == NULL) || (s->sc_netid == NULL) ||
		    (FUNC1(netid, s->sc_netid) == 0)))
			break;
		p = s;
	}
	*prev = p;
	return (s);
}