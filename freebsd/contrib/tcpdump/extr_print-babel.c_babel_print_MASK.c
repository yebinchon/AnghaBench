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
typedef  int /*<<< orphan*/  u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int const,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC3(netdissect_options *ndo,
            const u_char *cp, u_int length)
{
    FUNC0((ndo, "babel"));

    FUNC1(*cp, 4);

    if(cp[0] != 42) {
        FUNC0((ndo, " invalid header"));
        return;
    } else {
        FUNC0((ndo, " %d", cp[1]));
    }

    switch(cp[1]) {
    case 2:
        FUNC2(ndo, cp, length);
        break;
    default:
        FUNC0((ndo, " unknown version"));
        break;
    }

    return;

 trunc:
    FUNC0((ndo, " %s", tstr));
    return;
}