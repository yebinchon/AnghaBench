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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BIGNUM *FUNC7(BIGNUM *a, BIGNUM *b)
{
    BIGNUM *t;
    int shifts = 0;

    FUNC6(a);
    FUNC6(b);

    /* 0 <= b <= a */
    while (!FUNC2(b)) {
        /* 0 < b <= a */

        if (FUNC1(a)) {
            if (FUNC1(b)) {
                if (!FUNC5(a, a, b))
                    goto err;
                if (!FUNC4(a, a))
                    goto err;
                if (FUNC0(a, b) < 0) {
                    t = a;
                    a = b;
                    b = t;
                }
            } else {            /* a odd - b even */

                if (!FUNC4(b, b))
                    goto err;
                if (FUNC0(a, b) < 0) {
                    t = a;
                    a = b;
                    b = t;
                }
            }
        } else {                /* a is even */

            if (FUNC1(b)) {
                if (!FUNC4(a, a))
                    goto err;
                if (FUNC0(a, b) < 0) {
                    t = a;
                    a = b;
                    b = t;
                }
            } else {            /* a even - b even */

                if (!FUNC4(a, a))
                    goto err;
                if (!FUNC4(b, b))
                    goto err;
                shifts++;
            }
        }
        /* 0 <= b <= a */
    }

    if (shifts) {
        if (!FUNC3(a, a, shifts))
            goto err;
    }
    FUNC6(a);
    return a;
 err:
    return NULL;
}