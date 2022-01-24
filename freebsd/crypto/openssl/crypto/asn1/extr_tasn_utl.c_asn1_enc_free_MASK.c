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
struct TYPE_3__ {int modified; scalar_t__ len; int /*<<< orphan*/ * enc; } ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;
typedef  TYPE_1__ ASN1_ENCODING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*) ; 

void FUNC2(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
    ASN1_ENCODING *enc;
    enc = FUNC1(pval, it);
    if (enc) {
        FUNC0(enc->enc);
        enc->enc = NULL;
        enc->len = 0;
        enc->modified = 1;
    }
}