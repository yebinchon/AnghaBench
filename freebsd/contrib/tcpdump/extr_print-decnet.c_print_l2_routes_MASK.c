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
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(netdissect_options *ndo,
                const char *rp, u_int len)
{
	int count;
	int area;
	int info;

	/* The last short is a checksum */
	while (len > (3 * sizeof(short))) {
	    FUNC2(*rp, 3 * sizeof(short));
	    count = FUNC0(rp);
	    if (count > 1024)
		return (1);	/* seems to be bogus from here on */
	    rp += sizeof(short);
	    len -= sizeof(short);
	    area = FUNC0(rp);
	    rp += sizeof(short);
	    len -= sizeof(short);
	    info = FUNC0(rp);
	    rp += sizeof(short);
	    len -= sizeof(short);
	    FUNC1((ndo, "{areas %d-%d cost %d hops %d} ", area, area + count,
			    FUNC3(info), FUNC4(info)));
	}
	return (1);

trunc:
	return (0);
}