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
typedef  int /*<<< orphan*/  X509_REVOKED ;
typedef  int /*<<< orphan*/  ASN1_TIME ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;
typedef  int /*<<< orphan*/  ASN1_GENERALIZEDTIME ;
typedef  int /*<<< orphan*/  ASN1_ENUMERATED ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NID_crl_reason ; 
 int /*<<< orphan*/  NID_hold_instruction_code ; 
 int /*<<< orphan*/  NID_invalidity_date ; 
 int OCSP_REVOKED_STATUS_NOSTATUS ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,char const*) ; 

__attribute__((used)) static int FUNC10(X509_REVOKED *rev, const char *str)
{
    char *tmp = NULL;
    int reason_code = -1;
    int i, ret = 0;
    ASN1_OBJECT *hold = NULL;
    ASN1_GENERALIZEDTIME *comp_time = NULL;
    ASN1_ENUMERATED *rtmp = NULL;

    ASN1_TIME *revDate = NULL;

    i = FUNC9(&revDate, &reason_code, &hold, &comp_time, str);

    if (i == 0)
        goto end;

    if (rev && !FUNC8(rev, revDate))
        goto end;

    if (rev && (reason_code != OCSP_REVOKED_STATUS_NOSTATUS)) {
        rtmp = FUNC1();
        if (rtmp == NULL || !FUNC2(rtmp, reason_code))
            goto end;
        if (!FUNC7(rev, NID_crl_reason, rtmp, 0, 0))
            goto end;
    }

    if (rev && comp_time) {
        if (!FUNC7
            (rev, NID_invalidity_date, comp_time, 0, 0))
            goto end;
    }
    if (rev && hold) {
        if (!FUNC7
            (rev, NID_hold_instruction_code, hold, 0, 0))
            goto end;
    }

    if (reason_code != OCSP_REVOKED_STATUS_NOSTATUS)
        ret = 2;
    else
        ret = 1;

 end:

    FUNC6(tmp);
    FUNC4(hold);
    FUNC3(comp_time);
    FUNC0(rtmp);
    FUNC5(revDate);

    return ret;
}