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
typedef  int /*<<< orphan*/  krb5_prompter_fct ;
typedef  int /*<<< orphan*/ * krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/ * krb5_ccache ;

/* Variables and functions */
 char* KADM5_ADMIN_SERVICE ; 
 scalar_t__ KADM5_FAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 char* FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,char*) ; 

krb5_error_code
FUNC11(krb5_context context,
			const char *client_name,
			const char *server_name,
			const char *password,
			krb5_prompter_fct prompter,
			const char *keytab,
			krb5_ccache ccache,
			krb5_ccache *ret_cache)
{
    krb5_error_code ret;
    krb5_ccache id = NULL;
    krb5_principal default_client = NULL, client = NULL;

    /* treat empty password as NULL */
    if(password && *password == '\0')
	password = NULL;
    if(server_name == NULL)
	server_name = KADM5_ADMIN_SERVICE;

    if(client_name != NULL) {
	ret = FUNC8(context, client_name, &client);
	if(ret)
	    return ret;
    }

    if(ccache != NULL) {
	id = ccache;
	ret = FUNC5(context, id, &client);
	if(ret)
	    return ret;
    } else {
	/* get principal from default cache, ok if this doesn't work */

	ret = FUNC0(context, &id, &default_client);
	if (ret) {
	    /*
	     * No client was specified by the caller and we cannot
	     * determine the client from a credentials cache.
	     */
	    const char *user;

	    user = FUNC1 ();

	    if(user == NULL) {
		FUNC10(context, KADM5_FAILURE, "Unable to find local user name");
		return KADM5_FAILURE;
	    }
	    ret = FUNC7(context, &default_client,
				      NULL, user, "admin", NULL);
	    if(ret)
		return ret;
	}
    }


    /*
     * No client was specified by the caller, but we have a client
     * from the default credentials cache.
     */
    if (client == NULL && default_client != NULL)
	client = default_client;


    if(id && client && (default_client == NULL ||
	      FUNC9(context, client, default_client) != 0)) {
	ret = FUNC2(context, id, client, server_name);
	if(ret == 0) {
	    *ret_cache = id;
	    FUNC6(context, default_client);
	    if (default_client != client)
		FUNC6(context, client);
	    return 0;
	}
	if(ccache != NULL)
	    /* couldn't get ticket from cache */
	    return -1;
    }
    /* get creds via AS request */
    if(id && (id != ccache))
	FUNC4(context, id);
    if (client != default_client)
	FUNC6(context, default_client);

    ret = FUNC3(context, client, password, prompter, keytab,
			server_name, ret_cache);
    FUNC6(context, client);
    return ret;
}