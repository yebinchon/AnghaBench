#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_11__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ kadm5_server_context ;
struct TYPE_12__ {int principal; } ;
typedef  TYPE_2__ kadm5_principal_ent_rec ;
typedef  int /*<<< orphan*/  ent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  KADM5_PRIV_ADD ; 
 scalar_t__ VERSION2 ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_2__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char**) ; 

__attribute__((used)) static void
FUNC12(kadm5_server_context *contextp,
		      krb5_storage *in,
		      krb5_storage *out)
{
    uint32_t version, mask;
    kadm5_principal_ent_rec ent;
    krb5_error_code ret;
    char *password;

    FUNC9(&ent, 0, sizeof(ent));

    FUNC0(FUNC6(in, &version));
    FUNC1(version == VERSION2);
    FUNC0(FUNC10(contextp->context, in, &ent));
    FUNC0(FUNC6(in, &mask));
    FUNC0(FUNC11(in, &password));

    FUNC1(ent.principal);


    ret = FUNC2(contextp, KADM5_PRIV_ADD, ent.principal);
    if (ret)
	goto fail;

    ret = FUNC4(contextp, &ent, mask, password);

 fail:
    FUNC8(contextp->context, ret, "create principal");
    FUNC0(FUNC7(out, VERSION2)); /* api version */
    FUNC0(FUNC7(out, ret)); /* code */

    FUNC3(password);
    FUNC5(contextp, &ent);
}