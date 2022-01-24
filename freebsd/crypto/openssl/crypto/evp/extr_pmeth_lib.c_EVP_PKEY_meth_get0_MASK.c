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
typedef  int /*<<< orphan*/  EVP_PKEY_METHOD ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/ * app_pkey_methods ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  const** standard_methods ; 

const EVP_PKEY_METHOD *FUNC3(size_t idx)
{
    if (idx < FUNC0(standard_methods))
        return standard_methods[idx];
    if (app_pkey_methods == NULL)
        return NULL;
    idx -= FUNC0(standard_methods);
    if (idx >= (size_t)FUNC1(app_pkey_methods))
        return NULL;
    return FUNC2(app_pkey_methods, idx);
}