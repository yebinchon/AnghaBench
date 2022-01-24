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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  TS_F_TS_CONF_LOAD_KEY ; 
 int /*<<< orphan*/  TS_R_CANNOT_LOAD_KEY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

EVP_PKEY *FUNC4(const char *file, const char *pass)
{
    BIO *key = NULL;
    EVP_PKEY *pkey = NULL;

    if ((key = FUNC1(file, "r")) == NULL)
        goto end;
    pkey = FUNC2(key, NULL, NULL, (char *)pass);
 end:
    if (pkey == NULL)
        FUNC3(TS_F_TS_CONF_LOAD_KEY, TS_R_CANNOT_LOAD_KEY);
    FUNC0(key);
    return pkey;
}