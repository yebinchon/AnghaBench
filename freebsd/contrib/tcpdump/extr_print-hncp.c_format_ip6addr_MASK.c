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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int IPV4_MAPPED_HEADING_LEN ; 
 char const* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 char const* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static const char *
FUNC3(netdissect_options *ndo, const u_char *cp)
{
    if (FUNC2(cp))
        return FUNC1(ndo, cp + IPV4_MAPPED_HEADING_LEN);
    else
        return FUNC0(ndo, cp);
}