#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nid; } ;
typedef  TYPE_1__ ASN1_STRING_TABLE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (scalar_t__,int) ; 
 scalar_t__ stable ; 
 int /*<<< orphan*/  tbl_standard ; 

ASN1_STRING_TABLE *FUNC4(int nid)
{
    int idx;
    ASN1_STRING_TABLE fnd;

    fnd.nid = nid;
    if (stable) {
        idx = FUNC2(stable, &fnd);
        if (idx >= 0)
            return FUNC3(stable, idx);
    }
    return FUNC0(&fnd, tbl_standard, FUNC1(tbl_standard));
}