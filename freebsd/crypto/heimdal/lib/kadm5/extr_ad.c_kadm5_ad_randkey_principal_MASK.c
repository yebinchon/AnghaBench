#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  password ;
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  char krb5_keyblock ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  scalar_t__ kadm5_ret_t ;
struct TYPE_3__ {int /*<<< orphan*/  context; int /*<<< orphan*/  ccache; } ;
typedef  TYPE_1__ kadm5_ad_context ;

/* Variables and functions */
 int /*<<< orphan*/  ENCTYPE_ARCFOUR_HMAC_MD5 ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ KADM5_RPC_ERROR ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,int,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static kadm5_ret_t
FUNC11(void *server_handle,
			   krb5_principal principal,
			   krb5_keyblock **keys,
			   int *n_keys)
{
    kadm5_ad_context *context = server_handle;

    /*
     * random key
     */

#ifdef OPENLDAP
    krb5_data result_code_string, result_string;
    int result_code, plen;
    kadm5_ret_t ret;
    char *password;

    *keys = NULL;
    *n_keys = 0;

    {
	char p[64];
	krb5_generate_random_block(p, sizeof(p));
	plen = base64_encode(p, sizeof(p), &password);
	if (plen < 0)
	    return ENOMEM;
    }

    ret = ad_get_cred(context, NULL);
    if (ret) {
	free(password);
	return ret;
    }

    krb5_data_zero (&result_code_string);
    krb5_data_zero (&result_string);

    ret = krb5_set_password_using_ccache (context->context,
					  context->ccache,
					  password,
					  principal,
					  &result_code,
					  &result_code_string,
					  &result_string);

    krb5_data_free (&result_code_string);
    krb5_data_free (&result_string);

    if (ret == 0) {

	*keys = malloc(sizeof(**keys) * 1);
	if (*keys == NULL) {
	    ret = ENOMEM;
	    goto out;
	}
	*n_keys = 1;

	ret = krb5_string_to_key(context->context,
				 ENCTYPE_ARCFOUR_HMAC_MD5,
				 password,
				 principal,
				 &(*keys)[0]);
	memset(password, 0, sizeof(password));
	if (ret) {
	    free(*keys);
	    *keys = NULL;
	    *n_keys = 0;
	    goto out;
	}
    }
    memset(password, 0, plen);
    free(password);
 out:
    return ret;
#else
    *keys = NULL;
    *n_keys = 0;

    FUNC6(context->context, KADM5_RPC_ERROR, "Function not implemented");
    return KADM5_RPC_ERROR;
#endif
}