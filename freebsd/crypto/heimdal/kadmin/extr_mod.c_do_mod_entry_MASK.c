#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ num_strings; } ;
struct TYPE_15__ {scalar_t__ num_strings; } ;
struct TYPE_14__ {scalar_t__ num_strings; } ;
struct modify_options {int kvno_integer; TYPE_9__ pkinit_acl_strings; TYPE_13__ alias_strings; TYPE_11__ constrained_delegation_strings; scalar_t__ attributes_string; scalar_t__ pw_expiration_time_string; scalar_t__ expiration_time_string; scalar_t__ max_renewable_life_string; scalar_t__ max_ticket_life_string; } ;
typedef  int /*<<< orphan*/  princ ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int krb5_error_code ;
struct TYPE_16__ {int kvno; } ;
typedef  TYPE_1__ kadm5_principal_ent_rec ;

/* Variables and functions */
 int KADM5_ATTRIBUTES ; 
 int KADM5_KVNO ; 
 int KADM5_MAX_LIFE ; 
 int KADM5_MAX_RLIFE ; 
 int KADM5_PRINCIPAL ; 
 int KADM5_PRINC_EXPIRE_TIME ; 
 int KADM5_PW_EXPIRATION ; 
 int KADM5_TL_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_9__*) ; 
 int /*<<< orphan*/  context ; 
 int FUNC3 (TYPE_1__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  kadm_handle ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,int*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC10(krb5_principal principal, void *data)
{
    krb5_error_code ret;
    kadm5_principal_ent_rec princ;
    int mask = 0;
    struct modify_options *e = data;

    FUNC8 (&princ, 0, sizeof(princ));
    ret = FUNC5(kadm_handle, principal, &princ,
			      KADM5_PRINCIPAL | KADM5_ATTRIBUTES |
			      KADM5_MAX_LIFE | KADM5_MAX_RLIFE |
			      KADM5_PRINC_EXPIRE_TIME |
			      KADM5_PW_EXPIRATION);
    if(ret)
	return ret;

    if(e->max_ticket_life_string ||
       e->max_renewable_life_string ||
       e->expiration_time_string ||
       e->pw_expiration_time_string ||
       e->attributes_string ||
       e->kvno_integer != -1 ||
       e->constrained_delegation_strings.num_strings ||
       e->alias_strings.num_strings ||
       e->pkinit_acl_strings.num_strings) {
	ret = FUNC9(context, &princ, &mask,
			e->max_ticket_life_string,
			e->max_renewable_life_string,
			e->expiration_time_string,
			e->pw_expiration_time_string,
			e->attributes_string);
	if(e->kvno_integer != -1) {
	    princ.kvno = e->kvno_integer;
	    mask |= KADM5_KVNO;
	}
	if (e->constrained_delegation_strings.num_strings) {
	    FUNC1(context, &princ,
				       &e->constrained_delegation_strings);
	    mask |= KADM5_TL_DATA;
	}
	if (e->alias_strings.num_strings) {
	    FUNC0(context, &princ, &e->alias_strings);
	    mask |= KADM5_TL_DATA;
	}
	if (e->pkinit_acl_strings.num_strings) {
	    FUNC2(context, &princ, &e->pkinit_acl_strings);
	    mask |= KADM5_TL_DATA;
	}

    } else
	ret = FUNC3(&princ, &mask, NULL, 0);
    if(ret == 0) {
	ret = FUNC6(kadm_handle, &princ, mask);
	if(ret)
	    FUNC7(context, ret, "kadm5_modify_principal");
    }

    FUNC4(kadm_handle, &princ);
    return ret;
}