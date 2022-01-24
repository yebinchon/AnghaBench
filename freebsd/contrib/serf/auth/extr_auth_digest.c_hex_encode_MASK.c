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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int APR_MD5_DIGESTSIZE ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 char FUNC1 (unsigned char const) ; 

__attribute__((used)) static const char *
FUNC2(const unsigned char *hashval,
           apr_pool_t *pool)
{
    int i;
    char *hexval = FUNC0(pool, (APR_MD5_DIGESTSIZE * 2) + 1);
    for (i = 0; i < APR_MD5_DIGESTSIZE; i++) {
        hexval[2 * i] = FUNC1((hashval[i] >> 4) & 0xf);
        hexval[2 * i + 1] = FUNC1(hashval[i] & 0xf);
    }
    hexval[APR_MD5_DIGESTSIZE * 2] = '\0';
    return hexval;
}