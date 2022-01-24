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
typedef  int /*<<< orphan*/  ldns_rr_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(const char *name, ldns_rr_list *rrlist) {
    int i, cnt = FUNC1(rrlist);

    if (cnt == 0)
        return;
    FUNC3(";; %s SECTION:\n", name);
    for (i = 0; i < cnt; i++)
        FUNC2(FUNC0(rrlist, i));
    FUNC3("\n");
}