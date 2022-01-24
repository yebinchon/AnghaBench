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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  CTLOG ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  CT_F_CTLOG_NEW_FROM_BASE64 ; 
 int /*<<< orphan*/  CT_R_LOG_CONF_INVALID_KEY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_PASSED_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int FUNC4 (char const*,unsigned char**) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned char const**,int) ; 

int FUNC6(CTLOG **ct_log, const char *pkey_base64, const char *name)
{
    unsigned char *pkey_der = NULL;
    int pkey_der_len;
    const unsigned char *p;
    EVP_PKEY *pkey = NULL;

    if (ct_log == NULL) {
        FUNC1(CT_F_CTLOG_NEW_FROM_BASE64, ERR_R_PASSED_INVALID_ARGUMENT);
        return 0;
    }

    pkey_der_len = FUNC4(pkey_base64, &pkey_der);
    if (pkey_der_len < 0) {
        FUNC1(CT_F_CTLOG_NEW_FROM_BASE64, CT_R_LOG_CONF_INVALID_KEY);
        return 0;
    }

    p = pkey_der;
    pkey = FUNC5(NULL, &p, pkey_der_len);
    FUNC3(pkey_der);
    if (pkey == NULL) {
        FUNC1(CT_F_CTLOG_NEW_FROM_BASE64, CT_R_LOG_CONF_INVALID_KEY);
        return 0;
    }

    *ct_log = FUNC0(pkey, name);
    if (*ct_log == NULL) {
        FUNC2(pkey);
        return 0;
    }

    return 1;
}