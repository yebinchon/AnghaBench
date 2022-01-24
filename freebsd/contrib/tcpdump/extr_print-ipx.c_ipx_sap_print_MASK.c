#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_6__ {int /*<<< orphan*/  ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(netdissect_options *ndo, const u_short *ipx, u_int length)
{
    int command, i;

    FUNC3(ipx[0]);
    command = FUNC0(ipx);
    ipx++;
    length -= 2;

    switch (command) {
      case 1:
      case 3:
	if (command == 1)
	    FUNC2((ndo, "ipx-sap-req"));
	else
	    FUNC2((ndo, "ipx-sap-nearest-req"));

	FUNC3(ipx[0]);
	FUNC2((ndo, " %s", FUNC8(ndo, FUNC6(FUNC0(&ipx[0])))));
	break;

      case 2:
      case 4:
	if (command == 2)
	    FUNC2((ndo, "ipx-sap-resp"));
	else
	    FUNC2((ndo, "ipx-sap-nearest-resp"));

	for (i = 0; i < 8 && length > 0; i++) {
	    FUNC3(ipx[0]);
	    FUNC2((ndo, " %s '", FUNC8(ndo, FUNC6(FUNC0(&ipx[0])))));
	    if (FUNC5(ndo, (const u_char *)&ipx[1], 48, ndo->ndo_snapend)) {
		FUNC2((ndo, "'"));
		goto trunc;
	    }
	    FUNC4(ipx[25], 10);
	    FUNC2((ndo, "' addr %s",
		FUNC7(FUNC1(&ipx[25]), (const u_char *)&ipx[27])));
	    ipx += 32;
	    length -= 64;
	}
	break;
      default:
	FUNC2((ndo, "ipx-sap-?%x", command));
	break;
    }
    return;
trunc:
    FUNC2((ndo, "[|ipx %d]", length));
}