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
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_PRINT_MAX_INDENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int BN_BYTES ; 
 int FUNC3 (int /*<<< orphan*/  const*,unsigned char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int) ; 
 unsigned char* FUNC8 (int) ; 
 scalar_t__* FUNC9 (int /*<<< orphan*/  const*) ; 

int FUNC10(BIO *bp, const char *number, const BIGNUM *num,
                  unsigned char *ign, int indent)
{
    int n, rv = 0;
    const char *neg;
    unsigned char *buf = NULL, *tmp = NULL;
    int buflen;

    if (num == NULL)
        return 1;
    neg = FUNC4(num) ? "-" : "";
    if (!FUNC1(bp, indent, ASN1_PRINT_MAX_INDENT))
        return 0;
    if (FUNC5(num)) {
        if (FUNC2(bp, "%s 0\n", number) <= 0)
            return 0;
        return 1;
    }

    if (FUNC6(num) <= BN_BYTES) {
        if (FUNC2(bp, "%s %s%lu (%s0x%lx)\n", number, neg,
                       (unsigned long)FUNC9(num)[0], neg,
                       (unsigned long)FUNC9(num)[0]) <= 0)
            return 0;
        return 1;
    }

    buflen = FUNC6(num) + 1;
    buf = tmp = FUNC8(buflen);
    if (buf == NULL)
        goto err;
    buf[0] = 0;
    if (FUNC2(bp, "%s%s\n", number,
                   (neg[0] == '-') ? " (Negative)" : "") <= 0)
        goto err;
    n = FUNC3(num, buf + 1);

    if (buf[1] & 0x80)
        n++;
    else
        tmp++;

    if (FUNC0(bp, tmp, n, indent + 4) == 0)
        goto err;
    rv = 1;
    err:
    FUNC7(buf, buflen);
    return rv;
}