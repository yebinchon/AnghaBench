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
typedef  int /*<<< orphan*/  u_short ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static void
FUNC4(netdissect_options *ndo, const u_short *ipx, u_int length)
{
    int command, i;

    FUNC3(ipx[0]);
    command = FUNC0(ipx);
    ipx++;
    length -= 2;

    switch (command) {
      case 1:
	FUNC2((ndo, "ipx-rip-req"));
	if (length > 0) {
	    FUNC3(ipx[3]);
	    FUNC2((ndo, " %08x/%d.%d", FUNC1(&ipx[0]),
			 FUNC0(&ipx[2]), FUNC0(&ipx[3])));
	}
	break;
      case 2:
	FUNC2((ndo, "ipx-rip-resp"));
	for (i = 0; i < 50 && length > 0; i++) {
	    FUNC3(ipx[3]);
	    FUNC2((ndo, " %08x/%d.%d", FUNC1(&ipx[0]),
			 FUNC0(&ipx[2]), FUNC0(&ipx[3])));

	    ipx += 4;
	    length -= 8;
	}
	break;
      default:
	FUNC2((ndo, "ipx-rip-?%x", command));
	break;
    }
    return;
trunc:
    FUNC2((ndo, "[|ipx %d]", length));
}