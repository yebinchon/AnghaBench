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
typedef  int /*<<< orphan*/  ldns_rr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (char*,...) ; 

__attribute__((used)) static void
FUNC12(ldns_rr *rr) {
    bool isq = FUNC2(rr);
    int rdcnt = FUNC4(rr);
    int i, n;

    /* bind9-host does not count the initial ';' here */
    n = isq ? FUNC11(";") : 0;
    n = FUNC8(FUNC3(rr));
    if (!isq) {
        n += FUNC7(n, 24);
        n += FUNC11("%d", FUNC6(rr));
    }
    n += FUNC7(n, 32);
    n += FUNC9(FUNC0(rr));
    n += FUNC7(n, 40);
    n += FUNC10(FUNC1(rr));
    for (i = 0; i < rdcnt; i++) {
        if (i == 0) FUNC7(n, 48);
        else FUNC11(" ");
        FUNC8(FUNC5(rr, i));
    }
    FUNC11("\n");
}