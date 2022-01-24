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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct isakmp_gen {int /*<<< orphan*/  np; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  int /*<<< orphan*/  e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct isakmp_gen const) ; 
 int /*<<< orphan*/  FUNC2 (struct isakmp_gen const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct isakmp_gen*,struct isakmp_gen const*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct isakmp_gen const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const u_char *
FUNC7(netdissect_options *ndo,
		u_char np, const struct isakmp_gen *ext, const u_char *ep,
		uint32_t phase, uint32_t doi, uint32_t proto, int depth)
{
	const u_char *cp;
	int i;
	struct isakmp_gen e;

	cp = (const u_char *)ext;

	while (np) {
		FUNC1(*ext);
		FUNC4(&e, ext, sizeof(e));

		FUNC2(*ext, FUNC6(e.len));

		depth++;
		FUNC0((ndo,"\n"));
		for (i = 0; i < depth; i++)
			FUNC0((ndo,"    "));
		FUNC0((ndo,"("));
		cp = FUNC5(ndo, np, ext, ep, phase, doi, proto, depth);
		FUNC0((ndo,")"));
		depth--;

		if (cp == NULL) {
			/* Zero-length subitem */
			return NULL;
		}

		np = e.np;
		ext = (const struct isakmp_gen *)cp;
	}
	return cp;
trunc:
	FUNC0((ndo," [|%s]", FUNC3(np)));
	return NULL;
}