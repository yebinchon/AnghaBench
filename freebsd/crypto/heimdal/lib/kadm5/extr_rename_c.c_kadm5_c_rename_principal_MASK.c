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
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  scalar_t__ kadm5_ret_t ;
typedef  int /*<<< orphan*/  kadm5_client_context ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  kadm_rename ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

kadm5_ret_t
FUNC10(void *server_handle,
			 krb5_principal source,
			 krb5_principal target)
{
    kadm5_client_context *context = server_handle;
    kadm5_ret_t ret;
    krb5_storage *sp;
    unsigned char buf[1024];
    int32_t tmp;
    krb5_data reply;

    ret = FUNC2(server_handle);
    if(ret)
	return ret;

    sp = FUNC7(buf, sizeof(buf));
    if (sp == NULL)
	return ENOMEM;
    FUNC8(sp, kadm_rename);
    FUNC9(sp, source);
    FUNC9(sp, target);
    ret = FUNC1(context, sp);
    FUNC5(sp);
    if (ret)
	return ret;
    ret = FUNC0(context, &reply);
    if(ret)
	return ret;
    sp = FUNC6 (&reply);
    if (sp == NULL) {
	FUNC3 (&reply);
	return ENOMEM;
    }
    FUNC4(sp, &tmp);
    ret = tmp;
    FUNC5(sp);
    FUNC3 (&reply);
    return ret;
}