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
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isis_mt_flag_values ; 
 int /*<<< orphan*/  isis_mt_values ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(netdissect_options *ndo,
                const uint8_t *tptr, const char *ident)
{
    if (!FUNC4(*tptr, 2))
        return(0);

    FUNC3((ndo, "%s%s",
           ident,
           FUNC6(isis_mt_values,
                   "Reserved for IETF Consensus",
                   FUNC2(FUNC0(tptr)))));

    FUNC3((ndo, " Topology (0x%03x), Flags: [%s]",
           FUNC2(FUNC0(tptr)),
           FUNC5(isis_mt_flag_values, "none",FUNC1(FUNC0(tptr)))));

    return(2);
}