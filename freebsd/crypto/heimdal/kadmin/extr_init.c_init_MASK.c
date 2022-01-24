#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct init_options {scalar_t__ bare_flag; int /*<<< orphan*/ * realm_max_renewable_life_string; int /*<<< orphan*/ * realm_max_ticket_life_string; } ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int krb5_deltat ;
typedef  scalar_t__ kadm5_ret_t ;
struct TYPE_8__ {int max_life; int max_renewable_life; int /*<<< orphan*/  principal; int /*<<< orphan*/  attributes; } ;
typedef  TYPE_1__ kadm5_principal_ent_rec ;
typedef  int /*<<< orphan*/  ent ;
struct TYPE_9__ {int /*<<< orphan*/  (* hdb_close ) (int /*<<< orphan*/ ,TYPE_2__*) ;scalar_t__ (* hdb_open ) (int /*<<< orphan*/ ,TYPE_2__*,int,int) ;} ;
typedef  TYPE_2__ HDB ;

/* Variables and functions */
 int KADM5_ATTRIBUTES ; 
 int KADM5_MAX_LIFE ; 
 int KADM5_MAX_RLIFE ; 
 int KADM5_PRINCIPAL ; 
 int /*<<< orphan*/  KRB5_ANON_NAME ; 
 int /*<<< orphan*/  KRB5_KDB_DISALLOW_ALL_TIX ; 
 int KRB5_KDB_DISALLOW_POSTDATED ; 
 int KRB5_KDB_DISALLOW_PROXIABLE ; 
 int KRB5_KDB_DISALLOW_RENEWABLE ; 
 int KRB5_KDB_DISALLOW_TGT_BASED ; 
 int KRB5_KDB_PWCHANGE_SERVICE ; 
 int KRB5_KDB_REQUIRES_PRE_AUTH ; 
 int /*<<< orphan*/  KRB5_TGS_NAME ; 
 int /*<<< orphan*/  KRB5_WELLKNOWN_NAME ; 
 int O_CREAT ; 
 int O_RDWR ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC2 (char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  kadm_handle ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  local_flag ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_2__*) ; 

int
FUNC13(struct init_options *opt, int argc, char **argv)
{
    kadm5_ret_t ret;
    int i;
    HDB *db;
    krb5_deltat max_life = 0, max_rlife = 0;

    if (!local_flag) {
	FUNC8(context, "init is only available in local (-l) mode");
	return 0;
    }

    if (opt->realm_max_ticket_life_string) {
	if (FUNC10 (opt->realm_max_ticket_life_string, &max_life) != 0) {
	    FUNC8 (context, "unable to parse \"%s\"",
			opt->realm_max_ticket_life_string);
	    return 0;
	}
    }
    if (opt->realm_max_renewable_life_string) {
	if (FUNC10 (opt->realm_max_renewable_life_string, &max_rlife) != 0) {
	    FUNC8 (context, "unable to parse \"%s\"",
			opt->realm_max_renewable_life_string);
	    return 0;
	}
    }

    db = FUNC0(kadm_handle);

    ret = db->hdb_open(context, db, O_RDWR | O_CREAT, 0600);
    if(ret){
	FUNC7(context, ret, "hdb_open");
	return 0;
    }
    db->hdb_close(context, db);
    for(i = 0; i < argc; i++){
	krb5_principal princ;
	const char *realm = argv[i];

	if (opt->realm_max_ticket_life_string == NULL) {
	    max_life = 0;
	    if(FUNC2 ("Realm max ticket life", &max_life, NULL, 0)) {
		return 0;
	    }
	}
	if (opt->realm_max_renewable_life_string == NULL) {
	    max_rlife = 0;
	    if(FUNC2("Realm max renewable ticket life", &max_rlife,
			   NULL, 0)) {
		return 0;
	    }
	}

	/* Create `krbtgt/REALM' */
	ret = FUNC6(context, &princ, realm,
				  KRB5_TGS_NAME, realm, NULL);
	if(ret)
	    return 0;

	FUNC1(princ, max_life, max_rlife, 0);
	FUNC5(context, princ);

	if (opt->bare_flag)
	    continue;

	/* Create `kadmin/changepw' */
	FUNC6(context, &princ, realm,
			    "kadmin", "changepw", NULL);
	/*
	 * The Windows XP (at least) password changing protocol
	 * request the `kadmin/changepw' ticket with `renewable_ok,
	 * renewable, forwardable' and so fails if we disallow
	 * forwardable here.
	 */
	FUNC1(princ, 5*60, 5*60,
			    KRB5_KDB_DISALLOW_TGT_BASED|
			    KRB5_KDB_PWCHANGE_SERVICE|
			    KRB5_KDB_DISALLOW_POSTDATED|
			    KRB5_KDB_DISALLOW_RENEWABLE|
			    KRB5_KDB_DISALLOW_PROXIABLE|
			    KRB5_KDB_REQUIRES_PRE_AUTH);
	FUNC5(context, princ);

	/* Create `kadmin/admin' */
	FUNC6(context, &princ, realm,
			    "kadmin", "admin", NULL);
	FUNC1(princ, 60*60, 60*60, KRB5_KDB_REQUIRES_PRE_AUTH);
	FUNC5(context, princ);

	/* Create `changepw/kerberos' (for v4 compat) */
	FUNC6(context, &princ, realm,
			    "changepw", "kerberos", NULL);
	FUNC1(princ, 60*60, 60*60,
			    KRB5_KDB_DISALLOW_TGT_BASED|
			    KRB5_KDB_PWCHANGE_SERVICE);

	FUNC5(context, princ);

	/* Create `kadmin/hprop' for database propagation */
	FUNC6(context, &princ, realm,
			    "kadmin", "hprop", NULL);
	FUNC1(princ, 60*60, 60*60,
			    KRB5_KDB_REQUIRES_PRE_AUTH|
			    KRB5_KDB_DISALLOW_TGT_BASED);
	FUNC5(context, princ);

	/* Create `WELLKNOWN/ANONYMOUS' for anonymous as-req */
	FUNC6(context, &princ, realm,
			    KRB5_WELLKNOWN_NAME, KRB5_ANON_NAME, NULL);
	FUNC1(princ, 60*60, 60*60,
			    KRB5_KDB_REQUIRES_PRE_AUTH);
	FUNC5(context, princ);


	/* Create `default' */
	{
	    kadm5_principal_ent_rec ent;
	    int mask = 0;

	    FUNC9 (&ent, 0, sizeof(ent));
	    mask |= KADM5_PRINCIPAL;
	    FUNC6(context, &ent.principal, realm,
				"default", NULL);
	    mask |= KADM5_MAX_LIFE;
	    ent.max_life = 24 * 60 * 60;
	    mask |= KADM5_MAX_RLIFE;
	    ent.max_renewable_life = 7 * ent.max_life;
	    ent.attributes = KRB5_KDB_DISALLOW_ALL_TIX;
	    mask |= KADM5_ATTRIBUTES;

	    ret = FUNC3(kadm_handle, &ent, mask, "");
	    if (ret)
		FUNC4 (context, 1, ret, "kadm5_create_principal");

	    FUNC5(context, ent.principal);
	}
    }
    return 0;
}