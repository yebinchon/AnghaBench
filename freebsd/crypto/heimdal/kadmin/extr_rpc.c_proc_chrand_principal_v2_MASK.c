#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_principal ;
struct TYPE_9__ {scalar_t__ keytype; int /*<<< orphan*/  keyvalue; } ;
typedef  TYPE_1__ krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_10__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_2__ kadm5_server_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  KADM5_PRIV_CPW ; 
 scalar_t__ VERSION2 ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__**,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(kadm5_server_context *contextp,
			 krb5_storage *in,
			 krb5_storage *out)
{
    krb5_error_code ret;
    krb5_principal princ;
    uint32_t version;
    krb5_keyblock *new_keys;
    int n_keys;

    FUNC0(FUNC7(in, &version));
    FUNC1(version == VERSION2);
    FUNC0(FUNC11(contextp->context, in, &princ));

    ret = FUNC2(contextp, KADM5_PRIV_CPW, princ);
    if(ret)
	goto fail;

    ret = FUNC4(contextp, princ,
				  &new_keys, &n_keys);

 fail:
    FUNC10(contextp->context, ret, "rand key principal");

    FUNC0(FUNC9(out, VERSION2)); /* api version */
    FUNC0(FUNC9(out, ret));
    if (ret == 0) {
	int i;
	FUNC0(FUNC8(out, n_keys));

	for(i = 0; i < n_keys; i++){
	    FUNC0(FUNC9(out, new_keys[i].keytype));
	    FUNC0(FUNC12(out, new_keys[i].keyvalue));
	    FUNC5(contextp->context, &new_keys[i]);
	}
	FUNC3(new_keys);
    }
    FUNC6(contextp->context, princ);
}