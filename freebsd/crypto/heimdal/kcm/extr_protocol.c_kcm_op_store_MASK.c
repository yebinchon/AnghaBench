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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char**) ; 

__attribute__((used)) static krb5_error_code
FUNC9(krb5_context context,
	     kcm_client *client,
	     kcm_operation opcode,
	     krb5_storage *request,
	     krb5_storage *response)
{
    krb5_creds creds;
    krb5_error_code ret;
    kcm_ccache ccache;
    char *name;

    ret = FUNC8(request, &name);
    if (ret)
	return ret;

    FUNC0(context, client, opcode, name);

    ret = FUNC7(request, &creds);
    if (ret) {
	FUNC1(name);
	return ret;
    }

    ret = FUNC3(context, client, opcode,
				    name, &ccache);
    if (ret) {
	FUNC1(name);
	FUNC6(context, &creds);
	return ret;
    }

    ret = FUNC4(context, ccache, &creds, 0);
    if (ret) {
	FUNC1(name);
	FUNC6(context, &creds);
	FUNC5(context, ccache);
	return ret;
    }

    FUNC2(context, ccache, &creds);

    FUNC1(name);
    FUNC5(context, ccache);

    return 0;
}