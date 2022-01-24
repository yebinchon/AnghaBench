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
typedef  int krb5_error_code ;
struct TYPE_7__ {scalar_t__ length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(krb5_context context,
	krb5_crypto crypto,
	unsigned usage,
	krb5_data *cipher,
	krb5_data *clear)
{
    krb5_data decrypt;
    krb5_error_code ret;

    FUNC1(&decrypt);

    ret = FUNC2(context,
		       crypto,
		       usage,
		       cipher->data,
		       cipher->length,
		       &decrypt);

    if (ret) {
	FUNC3(context, ret, "krb5_decrypt");
	return ret;
    }

    if (decrypt.length != clear->length ||
	FUNC5(decrypt.data, clear->data, decrypt.length) != 0) {
	FUNC4(context, "clear text not same");
	return EINVAL;
    }

    FUNC0(&decrypt);

    return 0;
}