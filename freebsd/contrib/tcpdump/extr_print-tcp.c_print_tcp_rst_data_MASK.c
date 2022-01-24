#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {int /*<<< orphan*/  const* ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ MAX_RST_DATA_LEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC3(netdissect_options *ndo,
                   register const u_char *sp, u_int length)
{
        int c;

        FUNC0((ndo, FUNC1(*sp, length) ? " [RST" : " [!RST"));
        if (length > MAX_RST_DATA_LEN) {
                length = MAX_RST_DATA_LEN;	/* can use -X for longer */
                FUNC0((ndo, "+"));			/* indicate we truncate */
        }
        FUNC0((ndo, " "));
        while (length-- && sp < ndo->ndo_snapend) {
                c = *sp++;
                FUNC2(ndo, c);
        }
        FUNC0((ndo, "]"));
}