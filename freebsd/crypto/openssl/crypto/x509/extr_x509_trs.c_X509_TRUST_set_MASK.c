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

/* Variables and functions */
 int /*<<< orphan*/  X509_F_X509_TRUST_SET ; 
 int /*<<< orphan*/  X509_R_INVALID_TRUST ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(int *t, int trust)
{
    if (FUNC0(trust) == -1) {
        FUNC1(X509_F_X509_TRUST_SET, X509_R_INVALID_TRUST);
        return 0;
    }
    *t = trust;
    return 1;
}