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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(netdissect_options *ndo, register const u_char *cp,
                          u_int datalen, int exp)
{
        u_int i;

        if (exp)
                FUNC0((ndo, "tfo"));

        if (datalen == 0) {
                /* Fast Open Cookie Request */
                FUNC0((ndo, " cookiereq"));
        } else {
                /* Fast Open Cookie */
                if (datalen % 2 != 0 || datalen < 4 || datalen > 16) {
                        FUNC0((ndo, " invalid"));
                } else {
                        FUNC0((ndo, " cookie "));
                        for (i = 0; i < datalen; ++i)
                                FUNC0((ndo, "%02x", cp[i]));
                }
        }
}