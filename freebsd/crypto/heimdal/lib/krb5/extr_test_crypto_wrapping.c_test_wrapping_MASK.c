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
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_enctype ;
struct TYPE_4__ {size_t length; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC11 (size_t) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void
FUNC13(krb5_context context,
	      size_t min_size,
	      size_t max_size,
	      size_t step,
	      krb5_enctype etype)
{
    krb5_error_code ret;
    krb5_keyblock key;
    krb5_crypto crypto;
    krb5_data data;
    char *etype_name;
    void *buf;
    size_t size;

    ret = FUNC9(context, etype, &key);
    if (ret)
	FUNC6(context, 1, ret, "krb5_generate_random_keyblock");

    ret = FUNC5(context, etype, &etype_name);
    if (ret)
	FUNC6(context, 1, ret, "krb5_enctype_to_string");

    buf = FUNC11(max_size);
    if (buf == NULL)
	FUNC7(context, 1, "out of memory");
    FUNC12(buf, 0, max_size);

    ret = FUNC2(context, &key, 0, &crypto);
    if (ret)
	FUNC6(context, 1, ret, "krb5_crypto_init");

    for (size = min_size; size < max_size; size += step) {
	size_t wrapped_size;

	ret = FUNC4(context, crypto, 0, buf, size, &data);
	if (ret)
	    FUNC6(context, 1, ret, "encrypt size %lu using %s",
		     (unsigned long)size, etype_name);

	wrapped_size = FUNC10(context, crypto, size);

	if (wrapped_size != data.length)
	    FUNC7(context, 1, "calculated wrapped length %lu != "
		      "real wrapped length %lu for data length %lu using "
		      "enctype %s",
		      (unsigned long)wrapped_size,
		      (unsigned long)data.length,
		      (unsigned long)size,
		      etype_name);
	FUNC3(&data);
    }

    FUNC0(etype_name);
    FUNC0(buf);
    FUNC1(context, crypto);
    FUNC8(context, &key);
}