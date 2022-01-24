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
typedef  int /*<<< orphan*/  EVP_PKEY_ASN1_METHOD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  app_methods ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  const** standard_methods ; 

const EVP_PKEY_ASN1_METHOD *FUNC2(int idx)
{
    int num = FUNC0(standard_methods);
    if (idx < 0)
        return NULL;
    if (idx < num)
        return standard_methods[idx];
    idx -= num;
    return FUNC1(app_methods, idx);
}