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
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  kcm_operation ;
typedef  int /*<<< orphan*/  kcm_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char**) ; 

__attribute__((used)) static krb5_error_code
FUNC5(krb5_context context,
	       kcm_client *client,
	       kcm_operation opcode,
	       krb5_storage *request,
	       krb5_storage *response)
{
    krb5_error_code ret;
    char *name;

    ret = FUNC4(request, &name);
    if (ret)
	return ret;

    FUNC0(context, client, opcode, name);

    ret = FUNC2(context, client, name);
    if (ret == 0)
	FUNC3(context, client, name);

    FUNC1(name);

    return ret;
}