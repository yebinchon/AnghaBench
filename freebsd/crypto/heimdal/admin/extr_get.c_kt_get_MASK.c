#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int num_strings; char** strings; } ;
struct get_options {char* realm_string; int /*<<< orphan*/  server_port_integer; int /*<<< orphan*/  admin_server_string; int /*<<< orphan*/  principal_string; TYPE_1__ enctypes_strings; } ;
typedef  int /*<<< orphan*/  princ ;
typedef  void* krb5_principal ;
struct TYPE_15__ {scalar_t__ keytype; } ;
struct TYPE_14__ {int vno; int /*<<< orphan*/  timestamp; TYPE_3__ keyblock; void* principal; } ;
typedef  TYPE_2__ krb5_keytab_entry ;
typedef  int /*<<< orphan*/ * krb5_keytab ;
typedef  TYPE_3__ krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  scalar_t__ krb5_enctype ;
struct TYPE_16__ {int attributes; int kvno; scalar_t__ princ_expire_time; void* principal; } ;
typedef  TYPE_4__ kadm5_principal_ent_rec ;

/* Variables and functions */
 int FALSE ; 
 int KADM5_ATTRIBUTES ; 
 scalar_t__ KADM5_DUP ; 
 int KADM5_KVNO ; 
 int KADM5_PRINCIPAL ; 
 int KADM5_PRINC_EXPIRE_TIME ; 
 int KRB5_KDB_DISALLOW_ALL_TIX ; 
 int TRUE ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (void*,TYPE_4__*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,TYPE_4__*) ; 
 scalar_t__ FUNC4 (void*,void*,TYPE_4__*,int) ; 
 scalar_t__ FUNC5 (void*,TYPE_4__*,int) ; 
 scalar_t__ FUNC6 (void*,void*,TYPE_3__**,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*,void**) ; 
 char* FUNC12 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC17 () ; 
 scalar_t__* FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC20 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

int
FUNC22(struct get_options *opt, int argc, char **argv)
{
    krb5_error_code ret = 0;
    krb5_keytab keytab;
    void *kadm_handle = NULL;
    krb5_enctype *etypes = NULL;
    size_t netypes = 0;
    size_t i;
    int a, j;
    unsigned int failed = 0;

    if((keytab = FUNC17()) == NULL)
	return 1;

    if(opt->realm_string)
	FUNC13(context, opt->realm_string);

    if (opt->enctypes_strings.num_strings != 0) {

	etypes = FUNC18 (opt->enctypes_strings.num_strings * sizeof(*etypes));
	if (etypes == NULL) {
	    FUNC16(context, "malloc failed");
	    goto out;
	}
	netypes = opt->enctypes_strings.num_strings;
	for(i = 0; i < netypes; i++) {
	    ret = FUNC14(context,
					 opt->enctypes_strings.strings[i],
					 &etypes[i]);
	    if(ret) {
		FUNC16(context, "unrecognized enctype: %s",
			   opt->enctypes_strings.strings[i]);
		goto out;
	    }
	}
    }


    for(a = 0; a < argc; a++){
	krb5_principal princ_ent;
	kadm5_principal_ent_rec princ;
	int mask = 0;
	krb5_keyblock *keys;
	int n_keys;
	int created = 0;
	krb5_keytab_entry entry;

	ret = FUNC11(context, argv[a], &princ_ent);
	if (ret) {
	    FUNC15(context, ret, "can't parse principal %s", argv[a]);
	    failed++;
	    continue;
	}
	FUNC19(&princ, 0, sizeof(princ));
	princ.principal = princ_ent;
	mask |= KADM5_PRINCIPAL;
	princ.attributes |= KRB5_KDB_DISALLOW_ALL_TIX;
	mask |= KADM5_ATTRIBUTES;
	princ.princ_expire_time = 0;
	mask |= KADM5_PRINC_EXPIRE_TIME;

	if(kadm_handle == NULL) {
	    const char *r;
	    if(opt->realm_string != NULL)
		r = opt->realm_string;
	    else
		r = FUNC12(context, princ_ent);
	    kadm_handle = FUNC20(opt->principal_string,
						 r,
						 opt->admin_server_string,
						 opt->server_port_integer);
	    if(kadm_handle == NULL)
		break;
	}

	ret = FUNC1(kadm_handle, &princ, mask, "x");
	if(ret == 0)
	    created = 1;
	else if(ret != KADM5_DUP) {
	    FUNC15(context, ret, "kadm5_create_principal(%s)", argv[a]);
	    FUNC8(context, princ_ent);
	    failed++;
	    continue;
	}
	ret = FUNC6(kadm_handle, princ_ent, &keys, &n_keys);
	if (ret) {
	    FUNC15(context, ret, "kadm5_randkey_principal(%s)", argv[a]);
	    FUNC8(context, princ_ent);
	    failed++;
	    continue;
	}

	ret = FUNC4(kadm_handle, princ_ent, &princ,
			      KADM5_PRINCIPAL | KADM5_KVNO | KADM5_ATTRIBUTES);
	if (ret) {
	    FUNC15(context, ret, "kadm5_get_principal(%s)", argv[a]);
	    for (j = 0; j < n_keys; j++)
		FUNC7(context, &keys[j]);
	    FUNC8(context, princ_ent);
	    failed++;
	    continue;
	}
	if(!created && (princ.attributes & KRB5_KDB_DISALLOW_ALL_TIX))
	    FUNC16(context, "%s: disallow-all-tix flag set - clearing", argv[a]);
	princ.attributes &= (~KRB5_KDB_DISALLOW_ALL_TIX);
	mask = KADM5_ATTRIBUTES;
	if(created) {
	    princ.kvno = 1;
	    mask |= KADM5_KVNO;
	}
	ret = FUNC5(kadm_handle, &princ, mask);
	if (ret) {
	    FUNC15(context, ret, "kadm5_modify_principal(%s)", argv[a]);
	    for (j = 0; j < n_keys; j++)
		FUNC7(context, &keys[j]);
	    FUNC8(context, princ_ent);
	    failed++;
	    continue;
	}
	for(j = 0; j < n_keys; j++) {
	    int do_add = TRUE;

	    if (netypes) {
		size_t k;

		do_add = FALSE;
		for (k = 0; k < netypes; ++k)
		    if (keys[j].keytype == etypes[k]) {
			do_add = TRUE;
			break;
		    }
	    }
	    if (do_add) {
		entry.principal = princ_ent;
		entry.vno = princ.kvno;
		entry.keyblock = keys[j];
		entry.timestamp = FUNC21 (NULL);
		ret = FUNC9(context, keytab, &entry);
		if (ret)
		    FUNC15(context, ret, "krb5_kt_add_entry");
	    }
	    FUNC7(context, &keys[j]);
	}

	FUNC3(kadm_handle, &princ);
	FUNC8(context, princ_ent);
    }
 out:
    FUNC0(etypes);
    if (kadm_handle)
	FUNC2(kadm_handle);
    FUNC10(context, keytab);
    return ret != 0 || failed > 0;
}