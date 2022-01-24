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
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC3 (unsigned char*,char const*) ; 

ASN1_OCTET_STRING *FUNC4(const char *ipasc)
{
    unsigned char ipout[16];
    ASN1_OCTET_STRING *ret;
    int iplen;

    /* If string contains a ':' assume IPv6 */

    iplen = FUNC3(ipout, ipasc);

    if (!iplen)
        return NULL;

    ret = FUNC1();
    if (ret == NULL)
        return NULL;
    if (!FUNC2(ret, ipout, iplen)) {
        FUNC0(ret);
        return NULL;
    }
    return ret;
}