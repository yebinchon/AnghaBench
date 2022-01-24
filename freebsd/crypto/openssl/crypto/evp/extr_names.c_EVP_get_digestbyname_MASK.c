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
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_NAME_TYPE_MD_METH ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPENSSL_INIT_ADD_ALL_DIGESTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

const EVP_MD *FUNC2(const char *name)
{
    const EVP_MD *cp;

    if (!FUNC1(OPENSSL_INIT_ADD_ALL_DIGESTS, NULL))
        return NULL;

    cp = (const EVP_MD *)FUNC0(name, OBJ_NAME_TYPE_MD_METH);
    return cp;
}