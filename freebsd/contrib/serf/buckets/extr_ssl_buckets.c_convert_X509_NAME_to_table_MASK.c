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
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  X509_NAME ;

/* Variables and functions */
 int /*<<< orphan*/  APR_HASH_KEY_STRING ; 
 int /*<<< orphan*/  NID_commonName ; 
 int /*<<< orphan*/  NID_countryName ; 
 int /*<<< orphan*/  NID_localityName ; 
 int /*<<< orphan*/  NID_organizationName ; 
 int /*<<< orphan*/  NID_organizationalUnitName ; 
 int /*<<< orphan*/  NID_pkcs9_emailAddress ; 
 int /*<<< orphan*/  NID_stateOrProvinceName ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static apr_hash_t *
FUNC4(X509_NAME *org, apr_pool_t *pool)
{
    char buf[1024];
    int ret;

    apr_hash_t *tgt = FUNC1(pool);

    ret = FUNC0(org,
                                    NID_commonName,
                                    buf, 1024);
    if (ret != -1)
        FUNC2(tgt, "CN", APR_HASH_KEY_STRING,
                     FUNC3(buf, ret, pool));
    ret = FUNC0(org,
                                    NID_pkcs9_emailAddress,
                                    buf, 1024);
    if (ret != -1)
        FUNC2(tgt, "E", APR_HASH_KEY_STRING,
                     FUNC3(buf, ret, pool));
    ret = FUNC0(org,
                                    NID_organizationalUnitName,
                                    buf, 1024);
    if (ret != -1)
        FUNC2(tgt, "OU", APR_HASH_KEY_STRING,
                     FUNC3(buf, ret, pool));
    ret = FUNC0(org,
                                    NID_organizationName,
                                    buf, 1024);
    if (ret != -1)
        FUNC2(tgt, "O", APR_HASH_KEY_STRING,
                     FUNC3(buf, ret, pool));
    ret = FUNC0(org,
                                    NID_localityName,
                                    buf, 1024);
    if (ret != -1)
        FUNC2(tgt, "L", APR_HASH_KEY_STRING,
                     FUNC3(buf, ret, pool));
    ret = FUNC0(org,
                                    NID_stateOrProvinceName,
                                    buf, 1024);
    if (ret != -1)
        FUNC2(tgt, "ST", APR_HASH_KEY_STRING,
                     FUNC3(buf, ret, pool));
    ret = FUNC0(org,
                                    NID_countryName,
                                    buf, 1024);
    if (ret != -1)
        FUNC2(tgt, "C", APR_HASH_KEY_STRING,
                     FUNC3(buf, ret, pool));

    return tgt;
}