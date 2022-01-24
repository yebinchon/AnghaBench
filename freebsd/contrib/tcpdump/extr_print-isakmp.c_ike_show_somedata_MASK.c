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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC2(netdissect_options *ndo,
			     const u_char *cp, const u_char *ep)
{
	/* there is too much data, just show some of it */
	const u_char *end = ep - 20;
	int  elen = 20;
	int   len = ep - cp;
	if(len > 10) {
		len = 10;
	}

	/* really shouldn't happen because of above */
	if(end < cp + len) {
		end = cp+len;
		elen = ep - end;
	}

	FUNC0((ndo," data=("));
	if(!FUNC1(ndo, (const uint8_t *)(cp), len)) goto trunc;
	FUNC0((ndo, "..."));
	if(elen) {
		if(!FUNC1(ndo, (const uint8_t *)(end), elen)) goto trunc;
	}
	FUNC0((ndo,")"));
	return 1;

trunc:
	return 0;
}