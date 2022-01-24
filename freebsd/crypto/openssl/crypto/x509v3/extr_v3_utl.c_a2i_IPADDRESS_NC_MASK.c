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
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 
 int FUNC5 (unsigned char*,char*) ; 
 char* FUNC6 (char const*,char) ; 

ASN1_OCTET_STRING *FUNC7(const char *ipasc)
{
    ASN1_OCTET_STRING *ret = NULL;
    unsigned char ipout[32];
    char *iptmp = NULL, *p;
    int iplen1, iplen2;
    p = FUNC6(ipasc, '/');
    if (!p)
        return NULL;
    iptmp = FUNC4(ipasc);
    if (!iptmp)
        return NULL;
    p = iptmp + (p - ipasc);
    *p++ = 0;

    iplen1 = FUNC5(ipout, iptmp);

    if (!iplen1)
        goto err;

    iplen2 = FUNC5(ipout + iplen1, p);

    FUNC3(iptmp);
    iptmp = NULL;

    if (!iplen2 || (iplen1 != iplen2))
        goto err;

    ret = FUNC1();
    if (ret == NULL)
        goto err;
    if (!FUNC2(ret, ipout, iplen1 + iplen2))
        goto err;

    return ret;

 err:
    FUNC3(iptmp);
    FUNC0(ret);
    return NULL;
}