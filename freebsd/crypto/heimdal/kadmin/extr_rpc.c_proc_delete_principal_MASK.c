#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_5__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ kadm5_server_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  KADM5_PRIV_DELETE ; 
 scalar_t__ VERSION2 ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(kadm5_server_context *contextp,
		      krb5_storage *in,
		      krb5_storage *out)
{
    uint32_t version;
    krb5_principal princ;
    krb5_error_code ret;

    FUNC0(FUNC5(in, &version));
    FUNC1(version == VERSION2);
    FUNC0(FUNC8(contextp->context, in, &princ));

    ret = FUNC2(contextp, KADM5_PRIV_DELETE, princ);
    if (ret)
	goto fail;

    ret = FUNC3(contextp, princ);

 fail:
    FUNC7(contextp->context, ret, "delete principal");
    FUNC0(FUNC6(out, VERSION2)); /* api version */
    FUNC0(FUNC6(out, ret)); /* code */

    FUNC4(contextp->context, princ);
}