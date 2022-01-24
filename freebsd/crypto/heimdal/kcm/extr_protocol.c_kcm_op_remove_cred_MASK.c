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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  kcm_operation ;
typedef  int /*<<< orphan*/  kcm_client ;
typedef  int /*<<< orphan*/  kcm_ccache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC9(krb5_context context,
		   kcm_client *client,
		   kcm_operation opcode,
		   krb5_storage *request,
		   krb5_storage *response)
{
    uint32_t whichfields;
    krb5_creds mcreds;
    krb5_error_code ret;
    kcm_ccache ccache;
    char *name;

    ret = FUNC7(request, &name);
    if (ret)
	return ret;

    FUNC0(context, client, opcode, name);

    ret = FUNC8(request, &whichfields);
    if (ret) {
	FUNC1(name);
	return ret;
    }

    ret = FUNC6(request, &mcreds);
    if (ret) {
	FUNC1(name);
	return ret;
    }

    ret = FUNC3(context, client, opcode,
				    name, &ccache);
    if (ret) {
	FUNC1(name);
	FUNC5(context, &mcreds);
	return ret;
    }

    ret = FUNC2(context, ccache, whichfields, &mcreds);

    /* XXX need to remove any events that match */

    FUNC1(name);
    FUNC5(context, &mcreds);
    FUNC4(context, ccache);

    return ret;
}