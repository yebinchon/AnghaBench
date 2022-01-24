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
typedef  int /*<<< orphan*/  CMS_SignerInfo ;
typedef  int /*<<< orphan*/  CMS_ReceiptRequest ;

/* Variables and functions */
 int /*<<< orphan*/  CMS_F_CMS_ADD1_RECEIPTREQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  NID_id_smime_aa_receiptRequest ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  V_ASN1_SEQUENCE ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char**) ; 

int FUNC4(CMS_SignerInfo *si, CMS_ReceiptRequest *rr)
{
    unsigned char *rrder = NULL;
    int rrderlen, r = 0;

    rrderlen = FUNC3(rr, &rrder);
    if (rrderlen < 0)
        goto merr;

    if (!FUNC0(si, NID_id_smime_aa_receiptRequest,
                                     V_ASN1_SEQUENCE, rrder, rrderlen))
        goto merr;

    r = 1;

 merr:
    if (!r)
        FUNC1(CMS_F_CMS_ADD1_RECEIPTREQUEST, ERR_R_MALLOC_FAILURE);

    FUNC2(rrder);

    return r;

}