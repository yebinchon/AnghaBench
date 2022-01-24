#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct _krb5_key_data {int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  local_key ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_4__ {int /*<<< orphan*/  checksum; int /*<<< orphan*/  cksumtype; } ;
typedef  TYPE_1__ Checksum ;

/* Variables and functions */
 int /*<<< orphan*/  CKSUMTYPE_HMAC_MD5 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct _krb5_key_data*,void const*,size_t,unsigned int,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct _krb5_key_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static krb5_error_code
FUNC6(krb5_context context,
		      const krb5_keyblock *key,
		      const void *data,
		      size_t len,
		      unsigned usage,
		      Checksum *result)
{
    struct _krb5_key_data local_key;
    krb5_error_code ret;

    FUNC5(&local_key, 0, sizeof(local_key));

    ret = FUNC1(context, key, &local_key.key);
    if (ret)
	return ret;

    ret = FUNC2 (&result->checksum, 16);
    if (ret) {
	FUNC4(context, local_key.key);
	return ret;
    }

    result->cksumtype = CKSUMTYPE_HMAC_MD5;
    ret = FUNC0(context, &local_key, data, len, usage, result);
    if (ret)
	FUNC3(&result->checksum);

    FUNC4(context, local_key.key);
    return ret;
}