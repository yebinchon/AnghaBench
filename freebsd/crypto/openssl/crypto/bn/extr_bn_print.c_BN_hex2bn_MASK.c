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
struct TYPE_9__ {int* d; int top; int neg; } ;
typedef  int BN_ULONG ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int BN_BYTES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int INT_MAX ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int) ; 
 scalar_t__ FUNC7 (char const) ; 

int FUNC8(BIGNUM **bn, const char *a)
{
    BIGNUM *ret = NULL;
    BN_ULONG l = 0;
    int neg = 0, h, m, i, j, k, c;
    int num;

    if (a == NULL || *a == '\0')
        return 0;

    if (*a == '-') {
        neg = 1;
        a++;
    }

    for (i = 0; i <= INT_MAX / 4 && FUNC7(a[i]); i++)
        continue;

    if (i == 0 || i > INT_MAX / 4)
        goto err;

    num = i + neg;
    if (bn == NULL)
        return num;

    /* a is the start of the hex digits, and it is 'i' long */
    if (*bn == NULL) {
        if ((ret = FUNC1()) == NULL)
            return 0;
    } else {
        ret = *bn;
        FUNC2(ret);
    }

    /* i is the number of hex digits */
    if (FUNC6(ret, i * 4) == NULL)
        goto err;

    j = i;                      /* least significant 'hex' */
    m = 0;
    h = 0;
    while (j > 0) {
        m = (BN_BYTES * 2 <= j) ? BN_BYTES * 2 : j;
        l = 0;
        for (;;) {
            c = a[j - m];
            k = FUNC3(c);
            if (k < 0)
                k = 0;          /* paranoia */
            l = (l << 4) | k;

            if (--m <= 0) {
                ret->d[h++] = l;
                break;
            }
        }
        j -= BN_BYTES * 2;
    }
    ret->top = h;
    FUNC5(ret);

    *bn = ret;
    FUNC4(ret);
    /* Don't set the negative flag if it's zero. */
    if (ret->top != 0)
        ret->neg = neg;
    return num;
 err:
    if (*bn == NULL)
        FUNC0(ret);
    return 0;
}