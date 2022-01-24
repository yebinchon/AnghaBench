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
typedef  int uint8_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int INET_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,char*,int) ; 

__attribute__((used)) static int
FUNC3(netdissect_options *ndo, uint8_t sreoff, uint8_t srelen,
                 const u_char *bp, u_int len)
{
	const u_char *up = bp;
	char buf[INET_ADDRSTRLEN];

	if (sreoff & 3) {
		FUNC0((ndo, ", badoffset=%u", sreoff));
		return (1);
	}
	if (srelen & 3) {
		FUNC0((ndo, ", badlength=%u", srelen));
		return (1);
	}
	if (sreoff >= srelen) {
		FUNC0((ndo, ", badoff/len=%u/%u", sreoff, srelen));
		return (1);
	}

	while (srelen != 0) {
		if (!FUNC1(*bp, 4))
			return (0);
		if (len < 4)
			return (0);

		FUNC2(bp, buf, sizeof(buf));
		FUNC0((ndo, " %s%s",
		    ((bp - up) == sreoff) ? "*" : "", buf));

		bp += 4;
		len -= 4;
		srelen -= 4;
	}
	return (1);
}