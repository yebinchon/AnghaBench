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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/ * krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  scalar_t__ krb5_cksumtype ;

/* Variables and functions */
 scalar_t__ CKSUMTYPE_HMAC_MD5 ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static krb5_error_code
FUNC5(krb5_context context,
	     const krb5_keyblock *key,
	     uint32_t *cksumtype,
	     size_t *cksumsize)
{
    krb5_cksumtype cktype;
    krb5_error_code ret;
    krb5_crypto crypto = NULL;

    ret = FUNC4(context, key, 0, &crypto);
    if (ret)
	return ret;

    ret = FUNC3(context, crypto, &cktype);
    FUNC2(context, crypto);
    if (ret)
	return ret;

    if (FUNC0(context, cktype) == FALSE) {
	*cksumtype = CKSUMTYPE_HMAC_MD5;
	*cksumsize = 16;
    }

    ret = FUNC1(context, cktype, cksumsize);
    if (ret)
	return ret;

    *cksumtype = (uint32_t)cktype;

    return 0;
}