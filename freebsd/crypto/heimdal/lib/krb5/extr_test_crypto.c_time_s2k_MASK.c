#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  krb5_salt ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_enctype ;
struct TYPE_3__ {scalar_t__ length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,long,long) ; 
 int /*<<< orphan*/  FUNC7 (struct timeval*,struct timeval*) ; 

__attribute__((used)) static void
FUNC8(krb5_context context,
	 krb5_enctype etype,
	 const char *password,
	 krb5_salt salt,
	 int iterations)
{
    struct timeval tv1, tv2;
    krb5_error_code ret;
    krb5_keyblock key;
    krb5_data opaque;
    char *etype_name;
    int i;

    ret = FUNC2(context, etype, &etype_name);
    if (ret)
	FUNC3(context, 1, ret, "krb5_enctype_to_string");

    opaque.data = NULL;
    opaque.length = 0;

    FUNC1(&tv1, NULL);

    for (i = 0; i < iterations; i++) {
	ret = FUNC5(context, etype, password, salt,
					 opaque, &key);
	if (ret)
	    FUNC3(context, 1, ret, "krb5_string_to_key_data_salt_opaque");
	FUNC4(context, &key);
    }

    FUNC1(&tv2, NULL);

    FUNC7(&tv2, &tv1);

    FUNC6("%s string2key %d iterations time: %3ld.%06ld\n",
	   etype_name, iterations, (long)tv2.tv_sec, (long)tv2.tv_usec);
    FUNC0(etype_name);

}