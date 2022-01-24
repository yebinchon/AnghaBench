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
typedef  scalar_t__ BN_ULONG ;

/* Variables and functions */
 int FUNC0 (scalar_t__ const*,scalar_t__ const*,int) ; 

int FUNC1(const BN_ULONG *a, const BN_ULONG *b, int cl, int dl)
{
    int n, i;
    n = cl - 1;

    if (dl < 0) {
        for (i = dl; i < 0; i++) {
            if (b[n - i] != 0)
                return -1;      /* a < b */
        }
    }
    if (dl > 0) {
        for (i = dl; i > 0; i--) {
            if (a[n + i] != 0)
                return 1;       /* a > b */
        }
    }
    return FUNC0(a, b, cl);
}