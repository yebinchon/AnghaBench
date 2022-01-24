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
typedef  int /*<<< orphan*/  ASN1_PCTX ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_ASN1_PCTX_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

ASN1_PCTX *FUNC2(void)
{
    ASN1_PCTX *ret;

    ret = FUNC1(sizeof(*ret));
    if (ret == NULL) {
        FUNC0(ASN1_F_ASN1_PCTX_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    return ret;
}