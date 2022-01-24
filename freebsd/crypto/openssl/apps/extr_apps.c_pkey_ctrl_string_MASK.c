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
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char*,char) ; 

int FUNC4(EVP_PKEY_CTX *ctx, const char *value)
{
    int rv;
    char *stmp, *vtmp = NULL;
    stmp = FUNC2(value);
    if (!stmp)
        return -1;
    vtmp = FUNC3(stmp, ':');
    if (vtmp) {
        *vtmp = 0;
        vtmp++;
    }
    rv = FUNC0(ctx, stmp, vtmp);
    FUNC1(stmp);
    return rv;
}