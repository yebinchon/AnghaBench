#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int ex_flags; scalar_t__ akid; } ;
typedef  TYPE_1__ X509 ;

/* Variables and functions */
 int EXFLAG_PROXY ; 
 int /*<<< orphan*/  KU_DIGITAL_SIGNATURE ; 
 int /*<<< orphan*/  KU_KEY_CERT_SIGN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int X509_V_ERR_KEYUSAGE_NO_CERTSIGN ; 
 int X509_V_ERR_KEYUSAGE_NO_DIGITAL_SIGNATURE ; 
 int X509_V_ERR_SUBJECT_ISSUER_MISMATCH ; 
 int X509_V_OK ; 
 int FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(X509 *issuer, X509 *subject)
{
    if (FUNC0(FUNC3(issuer),
                      FUNC2(subject)))
        return X509_V_ERR_SUBJECT_ISSUER_MISMATCH;

    FUNC5(issuer);
    FUNC5(subject);

    if (subject->akid) {
        int ret = FUNC1(issuer, subject->akid);
        if (ret != X509_V_OK)
            return ret;
    }

    if (subject->ex_flags & EXFLAG_PROXY) {
        if (FUNC4(issuer, KU_DIGITAL_SIGNATURE))
            return X509_V_ERR_KEYUSAGE_NO_DIGITAL_SIGNATURE;
    } else if (FUNC4(issuer, KU_KEY_CERT_SIGN))
        return X509_V_ERR_KEYUSAGE_NO_CERTSIGN;
    return X509_V_OK;
}