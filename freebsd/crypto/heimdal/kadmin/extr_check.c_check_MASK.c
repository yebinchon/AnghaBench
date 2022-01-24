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
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  kadm5_principal_ent_rec ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_TGS_NAME ; 
 int FUNC0 (char**,char*,char*,...) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  do_check_entry ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kadm_handle ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int
FUNC11(void *opt, int argc, char **argv)
{
    kadm5_principal_ent_rec ent;
    krb5_error_code ret;
    char *realm = NULL, *p, *p2;
    int found;

    if (argc == 0) {
	ret = FUNC5(context, &realm);
	if (ret) {
	    FUNC6(context, ret, "krb5_get_default_realm");
	    goto fail;
	}
    } else {
	realm = FUNC9(argv[0]);
	if (realm == NULL) {
	    FUNC7(context, "malloc");
	    goto fail;
	}
    }

    /*
     * Check krbtgt/REALM@REALM
     *
     * For now, just check existance
     */

    if (FUNC0(&p, "%s/%s@%s", KRB5_TGS_NAME, realm, realm) == -1) {
	FUNC6(context, errno, "asprintf");
	goto fail;
    }

    ret = FUNC3(p, &ent);
    if (ret) {
	FUNC8("%s doesn't exist, are you sure %s is a realm in your database",
	       p, realm);
	FUNC2(p);
	goto fail;
    }
    FUNC2(p);

    FUNC4(kadm_handle, &ent);

    /*
     * Check kadmin/admin@REALM
     */

    if (FUNC0(&p, "kadmin/admin@%s", realm) == -1) {
	FUNC6(context, errno, "asprintf");
	goto fail;
    }

    ret = FUNC3(p, &ent);
    if (ret) {
	FUNC8("%s doesn't exist, "
	       "there is no way to do remote administration", p);
	FUNC2(p);
	goto fail;
    }
    FUNC2(p);

    FUNC4(kadm_handle, &ent);

    /*
     * Check kadmin/changepw@REALM
     */

    if (FUNC0(&p, "kadmin/changepw@%s", realm) == -1) {
	FUNC6(context, errno, "asprintf");
	goto fail;
    }

    ret = FUNC3(p, &ent);
    if (ret) {
	FUNC8("%s doesn't exist, "
	       "there is no way to do change password", p);
	FUNC2(p);
	goto fail;
    }
    FUNC2(p);

    FUNC4(kadm_handle, &ent);

    /*
     * Check for duplicate afs keys
     */

    p2 = FUNC9(realm);
    if (p2 == NULL) {
	FUNC6(context, errno, "malloc");
	goto fail;
    }
    FUNC10(p2);

    if (FUNC0(&p, "afs/%s@%s", p2, realm) == -1) {
	FUNC6(context, errno, "asprintf");
	FUNC2(p2);
	goto fail;
    }
    FUNC2(p2);

    ret = FUNC3(p, &ent);
    FUNC2(p);
    if (ret == 0) {
	FUNC4(kadm_handle, &ent);
	found = 1;
    } else
	found = 0;

    if (FUNC0(&p, "afs@%s", realm) == -1) {
	FUNC6(context, errno, "asprintf");
	goto fail;
    }

    ret = FUNC3(p, &ent);
    FUNC2(p);
    if (ret == 0) {
	FUNC4(kadm_handle, &ent);
	if (found) {
	    FUNC7(context, "afs@REALM and afs/cellname@REALM both exists");
	    goto fail;
	}
    }

    FUNC1("*", do_check_entry, "check", NULL);

    FUNC2(realm);
    return 0;
fail:
    FUNC2(realm);
    return 1;
}