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
typedef  int u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
#define  IPOPT_TS_TSANDADDR 129 
#define  IPOPT_TS_TSONLY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int const*) ; 

__attribute__((used)) static int
FUNC5(netdissect_options *ndo,
           register const u_char *cp, u_int length)
{
	register u_int ptr;
	register u_int len;
	int hoplen;
	const char *type;

	if (length < 4) {
		FUNC1((ndo, "[bad length %u]", length));
		return (0);
	}
	FUNC1((ndo, " TS{"));
	hoplen = ((cp[3]&0xF) != IPOPT_TS_TSONLY) ? 8 : 4;
	if ((length - 4) & (hoplen-1))
		FUNC1((ndo, "[bad length %u]", length));
	FUNC2(cp[2]);
	ptr = cp[2] - 1;
	len = 0;
	if (ptr < 4 || ((ptr - 4) & (hoplen-1)) || ptr > length + 1)
		FUNC1((ndo, "[bad ptr %u]", cp[2]));
	FUNC2(cp[3]);
	switch (cp[3]&0xF) {
	case IPOPT_TS_TSONLY:
		FUNC1((ndo, "TSONLY"));
		break;
	case IPOPT_TS_TSANDADDR:
		FUNC1((ndo, "TS+ADDR"));
		break;
	/*
	 * prespecified should really be 3, but some ones might send 2
	 * instead, and the IPOPT_TS_PRESPEC constant can apparently
	 * have both values, so we have to hard-code it here.
	 */

	case 2:
		FUNC1((ndo, "PRESPEC2.0"));
		break;
	case 3:			/* IPOPT_TS_PRESPEC */
		FUNC1((ndo, "PRESPEC"));
		break;
	default:
		FUNC1((ndo, "[bad ts type %d]", cp[3]&0xF));
		goto done;
	}

	type = " ";
	for (len = 4; len < length; len += hoplen) {
		if (ptr == len)
			type = " ^ ";
		FUNC3(cp[len], hoplen);
		FUNC1((ndo, "%s%d@%s", type, FUNC0(&cp[len+hoplen-4]),
		       hoplen!=8 ? "" : FUNC4(ndo, &cp[len])));
		type = " ";
	}

done:
	FUNC1((ndo, "%s", ptr == len ? " ^ " : ""));

	if (cp[3]>>4)
		FUNC1((ndo, " [%d hops not recorded]} ", cp[3]>>4));
	else
		FUNC1((ndo, "}"));
	return (0);

trunc:
	return (-1);
}