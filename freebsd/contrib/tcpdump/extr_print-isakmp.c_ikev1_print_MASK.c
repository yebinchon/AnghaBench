#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct isakmp_gen {int dummy; } ;
struct isakmp {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  np; int /*<<< orphan*/  etype; int /*<<< orphan*/  i_ck; int /*<<< orphan*/  r_ck; int /*<<< orphan*/  msgid; } ;
struct TYPE_5__ {scalar_t__ ndo_vflag; int /*<<< orphan*/ * ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct isakmp const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int ISAKMP_FLAG_C ; 
 int ISAKMP_FLAG_E ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,struct isakmp_gen const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(netdissect_options *ndo,
	    const u_char *bp,  u_int length,
	    const u_char *bp2, struct isakmp *base)
{
	const struct isakmp *p;
	const u_char *ep;
	u_char np;
	int i;
	int phase;

	p = (const struct isakmp *)bp;
	ep = ndo->ndo_snapend;

	phase = (FUNC2(base->msgid) == 0) ? 1 : 2;
	if (phase == 1)
		FUNC3((ndo," phase %d", phase));
	else
		FUNC3((ndo," phase %d/others", phase));

	i = FUNC5(&base->i_ck);
	if (i < 0) {
		if (FUNC10((const u_char *)&base->r_ck, sizeof(base->r_ck))) {
			/* the first packet */
			FUNC3((ndo," I"));
			if (bp2)
				FUNC8(&base->i_ck, bp2);
		} else
			FUNC3((ndo," ?"));
	} else {
		if (bp2 && FUNC6(i, bp2))
			FUNC3((ndo," I"));
		else if (bp2 && FUNC7(i, bp2))
			FUNC3((ndo," R"));
		else
			FUNC3((ndo," ?"));
	}

	FUNC3((ndo," %s", FUNC1(base->etype)));
	if (base->flags) {
		FUNC3((ndo,"[%s%s]", base->flags & ISAKMP_FLAG_E ? "E" : "",
			  base->flags & ISAKMP_FLAG_C ? "C" : ""));
	}

	if (ndo->ndo_vflag) {
		const struct isakmp_gen *ext;

		FUNC3((ndo,":"));

		/* regardless of phase... */
		if (base->flags & ISAKMP_FLAG_E) {
			/*
			 * encrypted, nothing we can do right now.
			 * we hope to decrypt the packet in the future...
			 */
			FUNC3((ndo," [encrypted %s]", FUNC4(base->np)));
			goto done;
		}

		FUNC0(p + 1, base->np);
		np = base->np;
		ext = (const struct isakmp_gen *)(p + 1);
		FUNC9(ndo, np, ext, ep, phase, 0, 0, 0);
	}

done:
	if (ndo->ndo_vflag) {
		if (FUNC11(base->len) != length) {
			FUNC3((ndo," (len mismatch: isakmp %u/ip %u)",
				  (uint32_t)FUNC11(base->len), length));
		}
	}
}