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
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int APR_MD5_DIGESTSIZE ; 
 scalar_t__ APR_SUCCESS ; 
 scalar_t__ FUNC0 (unsigned char*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,char const*,char const*,char const*) ; 
 char* FUNC2 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static apr_status_t
FUNC4(const char **out_ha1,
                 const char *username,
                 const char *password,
                 const char *realm_name,
                 apr_pool_t *pool)
{
    const char *tmp;
    unsigned char ha1[APR_MD5_DIGESTSIZE];
    apr_status_t status;

    /* calculate ha1:
       MD5 hash of the combined user name, authentication realm and password */
    tmp = FUNC1(pool, "%s:%s:%s",
                       username,
                       realm_name,
                       password);
    status = FUNC0(ha1, tmp, FUNC3(tmp));
    if (status)
        return status;

    *out_ha1 = FUNC2(ha1, pool);

    return APR_SUCCESS;
}