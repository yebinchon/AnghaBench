#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  scalar_t__ kadm5_ret_t ;
typedef  int /*<<< orphan*/  kadm5_principal_ent_t ;
struct TYPE_4__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ kadm5_client_context ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kadm_get ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

kadm5_ret_t
FUNC12(void *server_handle,
		      krb5_principal princ,
		      kadm5_principal_ent_t out,
		      uint32_t mask)
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

    sp = FUNC9(buf, sizeof(buf));
    if (sp == NULL) {
	FUNC4(context->context);
	return ENOMEM;
    }
    FUNC10(sp, kadm_get);
    FUNC11(sp, princ);
    FUNC10(sp, mask);
    ret = FUNC1(context, sp);
    FUNC7(sp);
    if(ret)
	return ret;
    ret = FUNC0(context, &reply);
    if (ret)
	return ret;
    sp = FUNC8 (&reply);
    if (sp == NULL) {
	FUNC4(context->context);
	FUNC5 (&reply);
	return ENOMEM;
    }
    FUNC6(sp, &tmp);
    ret = tmp;
    FUNC4(context->context);
    if(ret == 0)
	FUNC3(sp, out);
    FUNC7(sp);
    FUNC5 (&reply);
    return ret;
}