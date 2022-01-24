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
typedef  int /*<<< orphan*/  krb5_data ;
typedef  scalar_t__ kadm5_ret_t ;
typedef  int /*<<< orphan*/  kadm5_client_context ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (void*) ; 
 char** FUNC3 (int,int) ; 
 int /*<<< orphan*/  kadm_get_princs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*) ; 

kadm5_ret_t
FUNC12(void *server_handle,
		       const char *expression,
		       char ***princs,
		       int *count)
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
    if (sp == NULL)
	return ENOMEM;
    FUNC10(sp, kadm_get_princs);
    FUNC10(sp, expression != NULL);
    if(expression)
	FUNC11(sp, expression);
    ret = FUNC1(context, sp);
    FUNC7(sp);
    if (ret)
	return ret;
    ret = FUNC0(context, &reply);
    if(ret)
	return ret;
    sp = FUNC8 (&reply);
    if (sp == NULL) {
	FUNC4 (&reply);
	return ENOMEM;
    }
    FUNC5(sp, &tmp);
    ret = tmp;
    if(ret == 0) {
	int i;
	FUNC5(sp, &tmp);
	*princs = FUNC3(tmp + 1, sizeof(**princs));
	if (*princs == NULL) {
	    ret = ENOMEM;
	    goto out;
	}
	for(i = 0; i < tmp; i++)
	    FUNC6(sp, &(*princs)[i]);
	*count = tmp;
    }
out:
    FUNC7(sp);
    FUNC4 (&reply);
    return ret;
}