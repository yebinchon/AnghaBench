#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_enctype ;
struct TYPE_7__ {int length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  ETYPE_AES256_CTS_HMAC_SHA1_96 ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int
FUNC14(int argc, char **argv)
{
    krb5_context context;
    krb5_error_code ret;
    krb5_keyblock key;
    krb5_crypto crypto;
    size_t length;
    krb5_data input, output, output2;
    krb5_enctype etype = ETYPE_AES256_CTS_HMAC_SHA1_96;

    ret = FUNC12(&context);
    if (ret)
	FUNC0(1, "krb5_init_context %d", ret);

    ret = FUNC11(context, etype, &key);
    if (ret)
	FUNC7(context, 1, ret, "krb5_generate_random_keyblock");

    ret = FUNC4(context, etype, &length);
    if (ret)
	FUNC7(context, 1, ret, "krb5_crypto_prf_length");

    ret = FUNC2(context, &key, 0, &crypto);
    if (ret)
	FUNC7(context, 1, ret, "krb5_crypto_init");

    input.data = FUNC13("foo");
    input.length = 3;

    ret = FUNC3(context, crypto, &input, &output);
    if (ret)
	FUNC7(context, 1, ret, "krb5_crypto_prf");

    ret = FUNC3(context, crypto, &input, &output2);
    if (ret)
	FUNC7(context, 1, ret, "krb5_crypto_prf");

    if (FUNC5(&output, &output2) != 0)
	FUNC8(context, 1, "krb5_data_cmp");

    FUNC6(&output);
    FUNC6(&output2);

    FUNC1(context, crypto);

    FUNC10(context, &key);

    FUNC9(context);

    return 0;
}