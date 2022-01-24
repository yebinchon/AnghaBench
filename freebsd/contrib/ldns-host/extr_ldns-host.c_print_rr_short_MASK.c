#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr ;
struct TYPE_3__ {scalar_t__ type; char* text; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 TYPE_1__* rr_types ; 

__attribute__((used)) static void
FUNC9(ldns_rr *rr) {
    ldns_rr_type type = FUNC1(rr);
    size_t i, rdcnt = FUNC3(rr);

    FUNC6(FUNC2(rr));
    FUNC8(" ");
    for (i = 0; i < FUNC0(rr_types); i++) {
        if (rr_types[i].type == type) {
            FUNC8("%s", rr_types[i].text);
            goto found;
        }
    }

    FUNC8("has ");
    FUNC7(type);
    FUNC8(" record");

found:
    for (i = 0; i < rdcnt; i++) {
        FUNC8(" ");
        FUNC5(FUNC4(rr, i));
    }
    FUNC8("\n");
}