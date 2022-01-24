#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int type; int length; scalar_t__* data; } ;
typedef  int /*<<< orphan*/  BIGNUM ;
typedef  TYPE_1__ ASN1_STRING ;
typedef  TYPE_1__ ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_BN_TO_ASN1_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/  const*,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_NESTED_ASN1_ERROR ; 
 int V_ASN1_NEG_INTEGER ; 

__attribute__((used)) static ASN1_STRING *FUNC8(const BIGNUM *bn, ASN1_STRING *ai,
                                      int atype)
{
    ASN1_INTEGER *ret;
    int len;

    if (ai == NULL) {
        ret = FUNC2(atype);
    } else {
        ret = ai;
        ret->type = atype;
    }

    if (ret == NULL) {
        FUNC3(ASN1_F_BN_TO_ASN1_STRING, ERR_R_NESTED_ASN1_ERROR);
        goto err;
    }

    if (FUNC5(bn) && !FUNC6(bn))
        ret->type |= V_ASN1_NEG_INTEGER;

    len = FUNC7(bn);

    if (len == 0)
        len = 1;

    if (FUNC1(ret, NULL, len) == 0) {
        FUNC3(ASN1_F_BN_TO_ASN1_STRING, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    /* Correct zero case */
    if (FUNC6(bn))
        ret->data[0] = 0;
    else
        len = FUNC4(bn, ret->data);
    ret->length = len;
    return ret;
 err:
    if (ret != ai)
        FUNC0(ret);
    return NULL;
}