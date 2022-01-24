#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  pwbuf ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  char krb5_keyblock ;
typedef  scalar_t__ kadm5_ret_t ;
struct TYPE_7__ {unsigned int max_life; unsigned int max_renewable_life; int attributes; int kvno; int /*<<< orphan*/  principal; } ;
typedef  TYPE_1__ kadm5_principal_ent_rec ;
typedef  int /*<<< orphan*/  ent ;

/* Variables and functions */
 int KADM5_ATTRIBUTES ; 
 int KADM5_KVNO ; 
 int KADM5_MAX_LIFE ; 
 int KADM5_MAX_RLIFE ; 
 int KADM5_PRINCIPAL ; 
 int KRB5_KDB_DISALLOW_ALL_TIX ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int*) ; 
 int /*<<< orphan*/  kadm_handle ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

__attribute__((used)) static kadm5_ret_t
FUNC11(krb5_principal princ,
		    unsigned max_life,
		    unsigned max_rlife,
		    uint32_t attributes)
{
    kadm5_principal_ent_rec ent;
    kadm5_ret_t ret;
    int mask = 0;
    krb5_keyblock *keys;
    int n_keys, i;
    char *name;
    const char *password;
    char pwbuf[512];

    FUNC10(pwbuf, sizeof(pwbuf));
    password = pwbuf;

    ret = FUNC7(context, princ, &name);
    if (ret) {
	FUNC8(context, ret, "failed to unparse principal name");
	return ret;
    }

    FUNC9(&ent, 0, sizeof(ent));
    ent.principal = princ;
    mask |= KADM5_PRINCIPAL;
    if (max_life) {
	ent.max_life = max_life;
	mask |= KADM5_MAX_LIFE;
    }
    if (max_rlife) {
	ent.max_renewable_life = max_rlife;
	mask |= KADM5_MAX_RLIFE;
    }
    ent.attributes |= attributes | KRB5_KDB_DISALLOW_ALL_TIX;
    mask |= KADM5_ATTRIBUTES;

    /* Create the entry with a random password */
    ret = FUNC1(kadm_handle, &ent, mask, password);
    if(ret) {
	FUNC8(context, ret, "create_random_entry(%s): randkey failed",
		  name);
	goto out;
    }

    /* Replace the string2key based keys with real random bytes */
    ret = FUNC5(kadm_handle, princ, &keys, &n_keys);
    if(ret) {
	FUNC8(context, ret, "create_random_entry(%s): randkey failed",
		  name);
	goto out;
    }
    for(i = 0; i < n_keys; i++)
	FUNC6(context, &keys[i]);
    FUNC0(keys);
    ret = FUNC3(kadm_handle, princ, &ent,
			      KADM5_PRINCIPAL | KADM5_ATTRIBUTES);
    if(ret) {
	FUNC8(context, ret, "create_random_entry(%s): "
		  "unable to get principal", name);
	goto out;
    }
    ent.attributes &= (~KRB5_KDB_DISALLOW_ALL_TIX);
    ent.kvno = 1;
    ret = FUNC4(kadm_handle, &ent,
				 KADM5_ATTRIBUTES|KADM5_KVNO);
    FUNC2 (kadm_handle, &ent);
    if(ret) {
	FUNC8(context, ret, "create_random_entry(%s): "
		  "unable to modify principal", name);
	goto out;
    }
 out:
    FUNC0(name);
    return ret;
}