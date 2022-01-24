#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct sockaddr {int dummy; } ;
struct TYPE_26__ {char* realm; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ krb5_principal_data ;
typedef  TYPE_2__* krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_28__ {char* data; int length; } ;
typedef  TYPE_3__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_auth_context ;
struct TYPE_29__ {char** targrealm; int /*<<< orphan*/  mask; int /*<<< orphan*/  realm; int /*<<< orphan*/ * targname; TYPE_3__ newpasswd; } ;
typedef  TYPE_4__ kadm5_config_params ;
typedef  int /*<<< orphan*/  conf ;
typedef  int /*<<< orphan*/  chpw ;
struct TYPE_27__ {int /*<<< orphan*/  realm; } ;
typedef  TYPE_4__ ChangePasswdDataMS ;

/* Variables and functions */
 int /*<<< orphan*/  KADM5_ADMIN_SERVICE ; 
 int /*<<< orphan*/  KADM5_CONFIG_REALM ; 
 int /*<<< orphan*/  KADM5_PRIV_CPW ; 
 int KRB5_KPASSWD_HARDERROR ; 
 int KRB5_KPASSWD_MALFORMED ; 
 int KRB5_KPASSWD_SOFTERROR ; 
 int KRB5_KPASSWD_SUCCESS ; 
 scalar_t__ KRB5_KPASSWD_VERS_CHANGEPW ; 
 scalar_t__ KRB5_KPASSWD_VERS_SETPW ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  context ; 
 scalar_t__ FUNC1 (char*,int,TYPE_4__*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC7 (void*,TYPE_2__*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__**) ; 
 scalar_t__ FUNC10 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char**) ; 
 char* FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,TYPE_2__*,char**) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,struct sockaddr*,int,int,char const*) ; 

__attribute__((used)) static void
FUNC22 (krb5_auth_context auth_context,
	krb5_principal admin_principal,
	uint16_t version,
	int s,
	struct sockaddr *sa,
	int sa_size,
	krb5_data *in_data)
{
    krb5_error_code ret;
    char *client = NULL, *admin = NULL;
    const char *pwd_reason;
    kadm5_config_params conf;
    void *kadm5_handle = NULL;
    krb5_principal principal = NULL;
    krb5_data *pwd_data = NULL;
    char *tmp;
    ChangePasswdDataMS chpw;

    FUNC20 (&conf, 0, sizeof(conf));
    FUNC20(&chpw, 0, sizeof(chpw));

    if (version == KRB5_KPASSWD_VERS_CHANGEPW) {
	ret = FUNC8(context, in_data, &pwd_data);
	if (ret) {
	    FUNC18 (context, ret, "krb5_copy_data");
	    FUNC21 (auth_context, s, sa, sa_size, KRB5_KPASSWD_MALFORMED,
			"out out memory copying password");
	    return;
	}
	principal = admin_principal;
    } else if (version == KRB5_KPASSWD_VERS_SETPW) {
	size_t len;

	ret = FUNC1(in_data->data, in_data->length,
					&chpw, &len);
	if (ret) {
	    FUNC18 (context, ret, "decode_ChangePasswdDataMS");
	    FUNC21 (auth_context, s, sa, sa_size, KRB5_KPASSWD_MALFORMED,
			"malformed ChangePasswdData");
	    return;
	}


	ret = FUNC8(context, &chpw.newpasswd, &pwd_data);
	if (ret) {
	    FUNC18 (context, ret, "krb5_copy_data");
	    FUNC21 (auth_context, s, sa, sa_size, KRB5_KPASSWD_MALFORMED,
			"out out memory copying password");
	    goto out;
	}

	if (chpw.targname == NULL && chpw.targrealm != NULL) {
	    FUNC18 (context, ret, "kadm5_init_with_password_ctx");
	    FUNC21 (auth_context, s, sa, sa_size,
			KRB5_KPASSWD_MALFORMED,
			"targrealm but not targname");
	    goto out;
	}

	if (chpw.targname) {
	    krb5_principal_data princ;

	    princ.name = *chpw.targname;
	    princ.realm = *chpw.targrealm;
	    if (princ.realm == NULL) {
		ret = FUNC14(context, &princ.realm);

		if (ret) {
		    FUNC19 (context,
				"kadm5_init_with_password_ctx: "
				"failed to allocate realm");
		    FUNC21 (auth_context, s, sa, sa_size,
				KRB5_KPASSWD_SOFTERROR,
				"failed to allocate realm");
		    goto out;
		}
	    }
	    ret = FUNC9(context, &princ, &principal);
	    if (*chpw.targrealm == NULL)
		FUNC2(princ.realm);
	    if (ret) {
		FUNC18(context, ret, "krb5_copy_principal");
		FUNC21(auth_context, s, sa, sa_size,
			   KRB5_KPASSWD_HARDERROR,
			   "failed to allocate principal");
		goto out;
	    }
	} else
	    principal = admin_principal;
    } else {
	FUNC19 (context, "kadm5_init_with_password_ctx: unknown proto");
	FUNC21 (auth_context, s, sa, sa_size,
		    KRB5_KPASSWD_HARDERROR,
		    "Unknown protocol used");
	return;
    }

    ret = FUNC17 (context, admin_principal, &admin);
    if (ret) {
	FUNC18 (context, ret, "unparse_name failed");
	FUNC21 (auth_context, s, sa, sa_size,
		    KRB5_KPASSWD_HARDERROR, "out of memory error");
	goto out;
    }

    conf.realm = principal->realm;
    conf.mask |= KADM5_CONFIG_REALM;

    ret = FUNC6(context,
				       admin,
				       NULL,
				       KADM5_ADMIN_SERVICE,
				       &conf, 0, 0,
				       &kadm5_handle);
    if (ret) {
	FUNC18 (context, ret, "kadm5_init_with_password_ctx");
	FUNC21 (auth_context, s, sa, sa_size, 2,
		    "Internal error");
	goto out;
    }

    ret = FUNC17(context, principal, &client);
    if (ret) {
	FUNC18 (context, ret, "unparse_name failed");
	FUNC21 (auth_context, s, sa, sa_size,
		    KRB5_KPASSWD_HARDERROR, "out of memory error");
	goto out;
    }

    /*
     * Check password quality if not changing as administrator
     */

    if (FUNC16(context, admin_principal, principal) == TRUE) {

	pwd_reason = FUNC4 (context, principal,
						   pwd_data);
	if (pwd_reason != NULL ) {
	    FUNC19 (context,
			"%s didn't pass password quality check with error: %s",
			client, pwd_reason);
	    FUNC21 (auth_context, s, sa, sa_size,
			KRB5_KPASSWD_SOFTERROR, pwd_reason);
	    goto out;
	}
	FUNC19 (context, "Changing password for %s", client);
    } else {
	ret = FUNC0(kadm5_handle, KADM5_PRIV_CPW,
					  principal);
	if (ret) {
	    FUNC18 (context, ret,
		       "Check ACL failed for %s for changing %s password",
		       admin, client);
	    FUNC21 (auth_context, s, sa, sa_size,
			KRB5_KPASSWD_HARDERROR, "permission denied");
	    goto out;
	}
	FUNC19 (context, "%s is changing password for %s", admin, client);
    }

    ret = FUNC10(pwd_data, pwd_data->length + 1);
    if (ret) {
	FUNC18 (context, ret, "malloc: out of memory");
	FUNC21 (auth_context, s, sa, sa_size, KRB5_KPASSWD_HARDERROR,
		    "Internal error");
	goto out;
    }
    tmp = pwd_data->data;
    tmp[pwd_data->length - 1] = '\0';

    ret = FUNC7 (kadm5_handle, principal, tmp);
    FUNC11 (context, pwd_data);
    pwd_data = NULL;
    if (ret) {
	const char *str = FUNC15(context, ret);
	FUNC19(context, "kadm5_s_chpass_principal_cond: %s", str);
	FUNC21 (auth_context, s, sa, sa_size, KRB5_KPASSWD_SOFTERROR,
		    str ? str : "Internal error");
	FUNC12(context, str);
	goto out;
    }
    FUNC21 (auth_context, s, sa, sa_size, KRB5_KPASSWD_SUCCESS,
		"Password changed");
out:
    FUNC3(&chpw);
    if (principal != admin_principal)
	FUNC13(context, principal);
    if (admin)
	FUNC2(admin);
    if (client)
	FUNC2(client);
    if (pwd_data)
	FUNC11(context, pwd_data);
    if (kadm5_handle)
	FUNC5 (kadm5_handle);
}