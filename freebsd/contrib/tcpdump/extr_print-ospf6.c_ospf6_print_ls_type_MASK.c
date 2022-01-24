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
typedef  int /*<<< orphan*/  rtrid_t ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int LS_SCOPE_MASK ; 
 int LS_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ospf6_ls_scope_values ; 
 int /*<<< orphan*/  ospf6_lsa_values ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC3(netdissect_options *ndo,
                    register u_int ls_type, register const rtrid_t *ls_stateid)
{
        FUNC0((ndo, "\n\t    %s LSA (%d), %s Scope%s, LSA-ID %s",
               FUNC2(ospf6_lsa_values, "Unknown", ls_type & LS_TYPE_MASK),
               ls_type & LS_TYPE_MASK,
               FUNC2(ospf6_ls_scope_values, "Unknown", ls_type & LS_SCOPE_MASK),
               ls_type &0x8000 ? ", transitive" : "", /* U-bit */
               FUNC1(ndo, ls_stateid)));
}