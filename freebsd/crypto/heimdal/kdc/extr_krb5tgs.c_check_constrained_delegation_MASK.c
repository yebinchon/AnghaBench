#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_kdc_configuration ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/ * krb5_const_principal ;
struct TYPE_14__ {int /*<<< orphan*/ * principal; } ;
struct TYPE_11__ {TYPE_6__ entry; } ;
typedef  TYPE_1__ hdb_entry_ex ;
struct TYPE_13__ {scalar_t__ (* hdb_check_constrained_delegation ) (int /*<<< orphan*/ ,TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_12__ {size_t len; int /*<<< orphan*/ * val; } ;
typedef  TYPE_2__ HDB_Ext_Constrained_delegation_acl ;
typedef  TYPE_3__ HDB ;

/* Variables and functions */
 scalar_t__ KRB5KDC_ERR_BADOPTION ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (TYPE_6__*,TYPE_2__ const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC6(krb5_context context,
			     krb5_kdc_configuration *config,
			     HDB *clientdb,
			     hdb_entry_ex *client,
			     hdb_entry_ex *server,
			     krb5_const_principal target)
{
    const HDB_Ext_Constrained_delegation_acl *acl;
    krb5_error_code ret;
    size_t i;

    /*
     * constrained_delegation (S4U2Proxy) only works within
     * the same realm. We use the already canonicalized version
     * of the principals here, while "target" is the principal
     * provided by the client.
     */
    if(!FUNC4(context, client->entry.principal, server->entry.principal)) {
	ret = KRB5KDC_ERR_BADOPTION;
	FUNC1(context, config, 0,
	    "Bad request for constrained delegation");
	return ret;
    }

    if (clientdb->hdb_check_constrained_delegation) {
	ret = clientdb->hdb_check_constrained_delegation(context, clientdb, client, target);
	if (ret == 0)
	    return 0;
    } else {
	/* if client delegates to itself, that ok */
	if (FUNC3(context, client->entry.principal, server->entry.principal) == TRUE)
	    return 0;

	ret = FUNC0(&client->entry, &acl);
	if (ret) {
	    FUNC2(context);
	    return ret;
	}

	if (acl) {
	    for (i = 0; i < acl->len; i++) {
		if (FUNC3(context, target, &acl->val[i]) == TRUE)
		    return 0;
	    }
	}
	ret = KRB5KDC_ERR_BADOPTION;
    }
    FUNC1(context, config, 0,
	    "Bad request for constrained delegation");
    return ret;
}