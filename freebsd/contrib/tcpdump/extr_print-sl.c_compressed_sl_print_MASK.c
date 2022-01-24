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
typedef  int /*<<< orphan*/  u_char ;
struct tcphdr {int dummy; } ;
struct ip {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int FUNC0 (struct ip const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int NEW_A ; 
 int NEW_C ; 
 int NEW_I ; 
 int NEW_S ; 
 int NEW_U ; 
 int NEW_W ; 
 int SPECIALS_MASK ; 
#define  SPECIAL_D 129 
#define  SPECIAL_I 128 
 scalar_t__ FUNC2 (struct tcphdr const*) ; 
 size_t lastconn ; 
 int** lastlen ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo,
                    const u_char *chdr, const struct ip *ip,
                    u_int length, int dir)
{
	register const u_char *cp = chdr;
	register u_int flags, hlen;

	flags = *cp++;
	if (flags & NEW_C) {
		lastconn = *cp++;
		FUNC1((ndo, "ctcp %d", lastconn));
	} else
		FUNC1((ndo, "ctcp *"));

	/* skip tcp checksum */
	cp += 2;

	switch (flags & SPECIALS_MASK) {
	case SPECIAL_I:
		FUNC1((ndo, " *SA+%d", lastlen[dir][lastconn]));
		break;

	case SPECIAL_D:
		FUNC1((ndo, " *S+%d", lastlen[dir][lastconn]));
		break;

	default:
		if (flags & NEW_U)
			cp = FUNC3(ndo, "U=", cp);
		if (flags & NEW_W)
			cp = FUNC4(ndo, cp);
		if (flags & NEW_A)
			cp = FUNC3(ndo, "A+", cp);
		if (flags & NEW_S)
			cp = FUNC3(ndo, "S+", cp);
		break;
	}
	if (flags & NEW_I)
		cp = FUNC3(ndo, "I+", cp);

	/*
	 * 'hlen' is the length of the uncompressed TCP/IP header (in words).
	 * 'cp - chdr' is the length of the compressed header.
	 * 'length - hlen' is the amount of data in the packet.
	 */
	hlen = FUNC0(ip);
	hlen += FUNC2((const struct tcphdr *)&((const int32_t *)ip)[hlen]);
	lastlen[dir][lastconn] = length - (hlen << 2);
	FUNC1((ndo, " %d (%ld)", lastlen[dir][lastconn], (long)(cp - chdr)));
}