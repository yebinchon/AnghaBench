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
struct svc_callout {struct svc_callout* sc_netid; int /*<<< orphan*/ * sc_next; } ;
typedef  int /*<<< orphan*/  rpcvers_t ;
typedef  int /*<<< orphan*/  rpcprog_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct svc_callout*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct svc_callout* FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,struct svc_callout**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * svc_head ; 
 int /*<<< orphan*/  svc_lock ; 

void
FUNC5(const rpcprog_t prog, const rpcvers_t vers)
{
	struct svc_callout *prev;
	struct svc_callout *s;

	/* unregister the information anyway */
	(void) FUNC1(prog, vers, NULL);
	FUNC3(&svc_lock);
	while ((s = FUNC4(prog, vers, &prev, NULL)) != NULL) {
		if (prev == NULL) {
			svc_head = s->sc_next;
		} else {
			prev->sc_next = s->sc_next;
		}
		s->sc_next = NULL;
		if (s->sc_netid)
			FUNC0(s->sc_netid, sizeof (s->sc_netid) + 1);
		FUNC0(s, sizeof (struct svc_callout));
	}
	FUNC2(&svc_lock);
}