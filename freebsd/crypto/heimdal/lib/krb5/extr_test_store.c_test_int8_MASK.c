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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC6(krb5_context context, krb5_storage *sp)
{
    krb5_error_code ret;
    int i;
    int8_t val[] = {
	0, 1, -1, 128, -127
    }, v;

    FUNC4(sp, 0);

    for (i = 0; i < sizeof(val[0])/sizeof(val); i++) {

	ret = FUNC5(sp, val[i]);
	if (ret)
	    FUNC0(context, 1, ret, "krb5_store_int8");
	FUNC3(sp, 0, SEEK_SET);
	ret = FUNC2(sp, &v);
	if (ret)
	    FUNC0(context, 1, ret, "krb5_ret_int8");
	if (v != val[i])
	    FUNC1(context, 1, "store and ret mismatch");
    }
}