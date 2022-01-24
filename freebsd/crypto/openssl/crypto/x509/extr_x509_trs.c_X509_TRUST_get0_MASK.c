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
typedef  int /*<<< orphan*/  X509_TRUST ;

/* Variables and functions */
 scalar_t__ X509_TRUST_COUNT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * trstandard ; 
 int /*<<< orphan*/  trtable ; 

X509_TRUST *FUNC1(int idx)
{
    if (idx < 0)
        return NULL;
    if (idx < (int)X509_TRUST_COUNT)
        return trstandard + idx;
    return FUNC0(trtable, idx - X509_TRUST_COUNT);
}