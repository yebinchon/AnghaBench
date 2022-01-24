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
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  int /*<<< orphan*/  krb5_get_init_creds_opt ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  int /*<<< orphan*/  keytab_buf ;

/* Variables and functions */
 int /*<<< orphan*/  IPROP_NAME ; 
 int /*<<< orphan*/  KRB5_NT_SRV_HST ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  krb5_cc_type_memory ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  slave_str ; 

__attribute__((used)) static void
FUNC16(krb5_context context, const char *keytab_str,
	  krb5_ccache *cache, const char *serverhost)
{
    krb5_keytab keytab;
    krb5_principal client;
    krb5_error_code ret;
    krb5_get_init_creds_opt *init_opts;
    krb5_creds creds;
    char *server;
    char keytab_buf[256];

    if (keytab_str == NULL) {
	ret = FUNC13 (context, keytab_buf, sizeof(keytab_buf));
	if (ret)
	    FUNC5 (context, 1, ret, "krb5_kt_default_name");
	keytab_str = keytab_buf;
    }

    ret = FUNC14(context, keytab_str, &keytab);
    if(ret)
	FUNC5(context, 1, ret, "%s", keytab_str);


    ret = FUNC15 (context, slave_str, IPROP_NAME,
				   KRB5_NT_SRV_HST, &client);
    if (ret) FUNC5(context, 1, ret, "krb5_sname_to_principal");

    ret = FUNC10(context, &init_opts);
    if (ret) FUNC5(context, 1, ret, "krb5_get_init_creds_opt_alloc");

    FUNC0 (&server, "%d/%s", IPROP_NAME, serverhost);
    if (server == NULL)
	FUNC6 (context, 1, "malloc: no memory");

    ret = FUNC9(context, &creds, client, keytab,
				     0, server, init_opts);
    FUNC1 (server);
    FUNC11(context, init_opts);
    if(ret) FUNC5(context, 1, ret, "krb5_get_init_creds");

    ret = FUNC12(context, keytab);
    if(ret) FUNC5(context, 1, ret, "krb5_kt_close");

    ret = FUNC3(context, krb5_cc_type_memory, NULL, cache);
    if(ret) FUNC5(context, 1, ret, "krb5_cc_new_unique");

    ret = FUNC2(context, *cache, client);
    if(ret) FUNC5(context, 1, ret, "krb5_cc_initialize");

    ret = FUNC4(context, *cache, &creds);
    if(ret) FUNC5(context, 1, ret, "krb5_cc_store_cred");

    FUNC7(context, &creds);
    FUNC8(context, client);
}