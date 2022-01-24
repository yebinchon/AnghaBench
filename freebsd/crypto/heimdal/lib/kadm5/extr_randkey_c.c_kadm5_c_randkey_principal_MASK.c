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
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  scalar_t__ kadm5_ret_t ;
struct TYPE_4__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ kadm5_client_context ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  kadm_randkey ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 

kadm5_ret_t
FUNC13(void *server_handle,
			  krb5_principal princ,
			  krb5_keyblock **new_keys,
			  int *n_keys)
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
	FUNC3(context->context);
	return ENOMEM;
    }
    FUNC10(sp, kadm_randkey);
    FUNC11(sp, princ);
    ret = FUNC1(context, sp);
    FUNC7(sp);
    if (ret)
	return ret;
    ret = FUNC0(context, &reply);
    if(ret)
	return ret;
    sp = FUNC8(&reply);
    if (sp == NULL) {
	FUNC3(context->context);
	FUNC4 (&reply);
	return ENOMEM;
    }
    FUNC3(context->context);
    FUNC5(sp, &tmp);
    ret = tmp;
    if(ret == 0){
	krb5_keyblock *k;
	int i;

	FUNC5(sp, &tmp);
	k = FUNC12(tmp * sizeof(*k));
	if (k == NULL) {
	    ret = ENOMEM;
	    goto out;
	}
	for(i = 0; i < tmp; i++)
	    FUNC6(sp, &k[i]);
	*n_keys = tmp;
	*new_keys = k;
    }
out:
    FUNC7(sp);
    FUNC4 (&reply);
    return ret;
}