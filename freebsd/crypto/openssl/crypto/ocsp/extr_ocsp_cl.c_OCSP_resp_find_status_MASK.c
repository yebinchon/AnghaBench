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
typedef  int /*<<< orphan*/  OCSP_SINGLERESP ;
typedef  int /*<<< orphan*/  OCSP_CERTID ;
typedef  int /*<<< orphan*/  OCSP_BASICRESP ;
typedef  int /*<<< orphan*/  ASN1_GENERALIZEDTIME ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

int FUNC3(OCSP_BASICRESP *bs, OCSP_CERTID *id, int *status,
                          int *reason,
                          ASN1_GENERALIZEDTIME **revtime,
                          ASN1_GENERALIZEDTIME **thisupd,
                          ASN1_GENERALIZEDTIME **nextupd)
{
    int i;
    OCSP_SINGLERESP *single;
    i = FUNC0(bs, id, -1);
    /* Maybe check for multiple responses and give an error? */
    if (i < 0)
        return 0;
    single = FUNC1(bs, i);
    i = FUNC2(single, reason, revtime, thisupd, nextupd);
    if (status)
        *status = i;
    return 1;
}