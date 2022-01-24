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
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 

ASN1_STRING *FUNC3(const ASN1_STRING *str)
{
    ASN1_STRING *ret;
    if (!str)
        return NULL;
    ret = FUNC2();
    if (ret == NULL)
        return NULL;
    if (!FUNC0(ret, str)) {
        FUNC1(ret);
        return NULL;
    }
    return ret;
}