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
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char**,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC6(unsigned char **out, RSA *rsa, int ispub)
{
    int nbyte, hnbyte;
    const BIGNUM *n, *d, *e, *p, *q, *iqmp, *dmp1, *dmq1;

    nbyte = FUNC4(rsa);
    hnbyte = (FUNC0(rsa) + 15) >> 4;
    FUNC3(rsa, &n, &e, &d);
    FUNC5(out, e, 4);
    FUNC5(out, n, nbyte);
    if (ispub)
        return;
    FUNC2(rsa, &p, &q);
    FUNC1(rsa, &dmp1, &dmq1, &iqmp);
    FUNC5(out, p, hnbyte);
    FUNC5(out, q, hnbyte);
    FUNC5(out, dmp1, hnbyte);
    FUNC5(out, dmq1, hnbyte);
    FUNC5(out, iqmp, hnbyte);
    FUNC5(out, d, nbyte);
}