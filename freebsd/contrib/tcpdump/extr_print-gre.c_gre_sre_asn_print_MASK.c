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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 

__attribute__((used)) static int
FUNC3(netdissect_options *ndo, uint8_t sreoff, uint8_t srelen,
                  const u_char *bp, u_int len)
{
	const u_char *up = bp;

	if (sreoff & 1) {
		FUNC1((ndo, ", badoffset=%u", sreoff));
		return (1);
	}
	if (srelen & 1) {
		FUNC1((ndo, ", badlength=%u", srelen));
		return (1);
	}
	if (sreoff >= srelen) {
		FUNC1((ndo, ", badoff/len=%u/%u", sreoff, srelen));
		return (1);
	}

	while (srelen != 0) {
		if (!FUNC2(*bp, 2))
			return (0);
		if (len < 2)
			return (0);

		FUNC1((ndo, " %s%x",
		    ((bp - up) == sreoff) ? "*" : "",
		    FUNC0(bp)));

		bp += 2;
		len -= 2;
		srelen -= 2;
	}
	return (1);
}