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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  type_values ; 

__attribute__((used)) static void
FUNC2(netdissect_options *ndo,
                   uint32_t type, int count, int indent, int *first_one)
{
    if (count > 0) {
        if (*first_one) {
            *first_one = 0;
            if (indent > 1) {
                u_int t;
                FUNC0((ndo, "\n"));
                for (t = indent; t > 0; t--)
                    FUNC0((ndo, "\t"));
            } else {
                FUNC0((ndo, " "));
            }
        } else {
            FUNC0((ndo, ", "));
        }
        FUNC0((ndo, "%s", FUNC1(type_values, "Easter Egg", type)));
        if (count > 1)
            FUNC0((ndo, " (x%d)", count));
    }
}