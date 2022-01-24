#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * d; int /*<<< orphan*/ * e; int /*<<< orphan*/ * n; } ;
typedef  TYPE_1__ RSA ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(RSA *r, BIGNUM *n, BIGNUM *e, BIGNUM *d)
{
    /* If the fields n and e in r are NULL, the corresponding input
     * parameters MUST be non-NULL for n and e.  d may be
     * left NULL (in case only the public key is used).
     */
    if ((r->n == NULL && n == NULL)
        || (r->e == NULL && e == NULL))
        return 0;

    if (n != NULL) {
        FUNC1(r->n);
        r->n = n;
    }
    if (e != NULL) {
        FUNC1(r->e);
        r->e = e;
    }
    if (d != NULL) {
        FUNC0(r->d);
        r->d = d;
        FUNC2(r->d, BN_FLG_CONSTTIME);
    }

    return 1;
}