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
struct TYPE_3__ {char* lname; int /*<<< orphan*/  bitnum; } ;
typedef  TYPE_1__ BIT_STRING_BITNAME ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_BIT_STRING ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

int FUNC3(BIO *out, ASN1_BIT_STRING *bs,
                               BIT_STRING_BITNAME *tbl, int indent)
{
    BIT_STRING_BITNAME *bnam;
    char first = 1;
    FUNC1(out, "%*s", indent, "");
    for (bnam = tbl; bnam->lname; bnam++) {
        if (FUNC0(bs, bnam->bitnum)) {
            if (!first)
                FUNC2(out, ", ");
            FUNC2(out, bnam->lname);
            first = 0;
        }
    }
    FUNC2(out, "\n");
    return 1;
}