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
 scalar_t__ APR_ENOTIMPL ; 
 int APR_MD5_DIGESTSIZE ; 
 scalar_t__ APR_SUCCESS ; 
 scalar_t__ FUNC0 (unsigned char*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 
 char* FUNC2 (unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static apr_status_t
FUNC5(const char **out_ha2,
                 const char *uri,
                 const char *method,
                 const char *qop,
                 apr_pool_t *pool)
{
    if (!qop || FUNC3(qop, "auth") == 0) {
        const char *tmp;
        unsigned char ha2[APR_MD5_DIGESTSIZE];
        apr_status_t status;

        /* calculate ha2:
           MD5 hash of the combined method and URI */
        tmp = FUNC1(pool, "%s:%s",
                           method,
                           uri);
        status = FUNC0(ha2, tmp, FUNC4(tmp));
        if (status)
            return status;

        *out_ha2 = FUNC2(ha2, pool);

        return APR_SUCCESS;
    } else {
        /* TODO: auth-int isn't supported! */
        return APR_ENOTIMPL;
    }
}