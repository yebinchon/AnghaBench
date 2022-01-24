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
typedef  size_t uint32_t ;
typedef  int u_char ;
struct attrmap {size_t nvalue; scalar_t__* value; scalar_t__ type; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static const u_char *
FUNC5(netdissect_options *ndo,
		    const u_char *p, const u_char *ep2,
		    const struct attrmap *map, size_t nmap)
{
	int totlen;
	uint32_t t, v;

	FUNC2(p[0]);
	if (p[0] & 0x80)
		totlen = 4;
	else {
		FUNC3(&p[2]);
		totlen = 4 + FUNC0(&p[2]);
	}
	if (ep2 < p + totlen) {
		FUNC1((ndo,"[|attr]"));
		return ep2 + 1;
	}

	FUNC3(&p[0]);
	FUNC1((ndo,"("));
	t = FUNC0(&p[0]) & 0x7fff;
	if (map && t < nmap && map[t].type)
		FUNC1((ndo,"type=%s ", map[t].type));
	else
		FUNC1((ndo,"type=#%d ", t));
	if (p[0] & 0x80) {
		FUNC1((ndo,"value="));
		FUNC3(&p[2]);
		v = FUNC0(&p[2]);
		if (map && t < nmap && v < map[t].nvalue && map[t].value[v])
			FUNC1((ndo,"%s", map[t].value[v]));
		else {
			if (!FUNC4(ndo, (const uint8_t *)&p[2], 2)) {
				FUNC1((ndo,")"));
				goto trunc;
			}
		}
	} else {
		FUNC1((ndo,"len=%d value=", totlen - 4));
		if (!FUNC4(ndo, (const uint8_t *)&p[4], totlen - 4)) {
			FUNC1((ndo,")"));
			goto trunc;
		}
	}
	FUNC1((ndo,")"));
	return p + totlen;

trunc:
	return NULL;
}