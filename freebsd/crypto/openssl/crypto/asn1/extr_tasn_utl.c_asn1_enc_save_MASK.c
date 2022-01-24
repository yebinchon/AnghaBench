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
struct TYPE_3__ {int len; scalar_t__ modified; int /*<<< orphan*/ * enc; } ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;
typedef  TYPE_1__ ASN1_ENCODING ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_ASN1_ENC_SAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char const*,int) ; 

int FUNC5(ASN1_VALUE **pval, const unsigned char *in, int inlen,
                  const ASN1_ITEM *it)
{
    ASN1_ENCODING *enc;
    enc = FUNC3(pval, it);
    if (!enc)
        return 1;

    FUNC1(enc->enc);
    if ((enc->enc = FUNC2(inlen)) == NULL) {
        FUNC0(ASN1_F_ASN1_ENC_SAVE, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    FUNC4(enc->enc, in, inlen);
    enc->len = inlen;
    enc->modified = 0;

    return 1;
}