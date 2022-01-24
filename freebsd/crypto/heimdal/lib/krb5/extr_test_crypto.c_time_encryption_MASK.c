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
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_enctype ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC11 (size_t) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,unsigned long,int,long,long) ; 
 int /*<<< orphan*/  FUNC14 (struct timeval*,struct timeval*) ; 

__attribute__((used)) static void
FUNC15(krb5_context context, size_t size,
		krb5_enctype etype, int iterations)
{
    struct timeval tv1, tv2;
    krb5_error_code ret;
    krb5_keyblock key;
    krb5_crypto crypto;
    krb5_data data;
    char *etype_name;
    void *buf;
    int i;

    ret = FUNC10(context, etype, &key);
    if (ret)
	FUNC7(context, 1, ret, "krb5_generate_random_keyblock");

    ret = FUNC6(context, etype, &etype_name);
    if (ret)
	FUNC7(context, 1, ret, "krb5_enctype_to_string");

    buf = FUNC11(size);
    if (buf == NULL)
	FUNC8(context, 1, "out of memory");
    FUNC12(buf, 0, size);

    ret = FUNC3(context, &key, 0, &crypto);
    if (ret)
	FUNC7(context, 1, ret, "krb5_crypto_init");

    FUNC1(&tv1, NULL);

    for (i = 0; i < iterations; i++) {
	ret = FUNC5(context, crypto, 0, buf, size, &data);
	if (ret)
	    FUNC7(context, 1, ret, "encrypt: %d", i);
	FUNC4(&data);
    }

    FUNC1(&tv2, NULL);

    FUNC14(&tv2, &tv1);

    FUNC13("%s size: %7lu iterations: %d time: %3ld.%06ld\n",
	   etype_name, (unsigned long)size, iterations,
	   (long)tv2.tv_sec, (long)tv2.tv_usec);

    FUNC0(buf);
    FUNC0(etype_name);
    FUNC2(context, crypto);
    FUNC9(context, &key);
}