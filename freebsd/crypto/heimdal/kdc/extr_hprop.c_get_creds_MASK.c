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
typedef  int /*<<< orphan*/  krb5_preauthtype ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  int /*<<< orphan*/  krb5_get_init_creds_opt ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;

/* Variables and functions */
 int /*<<< orphan*/  HPROP_NAME ; 
 int /*<<< orphan*/  KRB5_PADATA_ENC_TIMESTAMP ; 
 int /*<<< orphan*/  hdb_kt_ops ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  krb5_cc_type_memory ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ktname ; 

__attribute__((used)) static void
FUNC14(krb5_context context, krb5_ccache *cache)
{
    krb5_keytab keytab;
    krb5_principal client;
    krb5_error_code ret;
    krb5_get_init_creds_opt *init_opts;
    krb5_preauthtype preauth = KRB5_PADATA_ENC_TIMESTAMP;
    krb5_creds creds;

    ret = FUNC11(context, &hdb_kt_ops);
    if(ret) FUNC3(context, 1, ret, "krb5_kt_register");

    ret = FUNC12(context, ktname, &keytab);
    if(ret) FUNC3(context, 1, ret, "krb5_kt_resolve");

    ret = FUNC13(context, &client, NULL,
			      "kadmin", HPROP_NAME, NULL);
    if(ret) FUNC3(context, 1, ret, "krb5_make_principal");

    ret = FUNC7(context, &init_opts);
    if(ret) FUNC3(context, 1, ret, "krb5_get_init_creds_opt_alloc");
    FUNC9(init_opts, &preauth, 1);

    ret = FUNC6(context, &creds, client, keytab, 0, NULL, init_opts);
    if(ret) FUNC3(context, 1, ret, "krb5_get_init_creds");

    FUNC8(context, init_opts);

    ret = FUNC10(context, keytab);
    if(ret) FUNC3(context, 1, ret, "krb5_kt_close");

    ret = FUNC1(context, krb5_cc_type_memory, NULL, cache);
    if(ret) FUNC3(context, 1, ret, "krb5_cc_new_unique");

    ret = FUNC0(context, *cache, client);
    if(ret) FUNC3(context, 1, ret, "krb5_cc_initialize");

    FUNC5(context, client);

    ret = FUNC2(context, *cache, &creds);
    if(ret) FUNC3(context, 1, ret, "krb5_cc_store_cred");

    FUNC4(context, &creds);
}