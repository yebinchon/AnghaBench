#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_salt ;
typedef  scalar_t__ krb5_error_code ;
typedef  scalar_t__ krb5_enctype ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  scalar_t__ krb5_boolean ;
struct TYPE_16__ {int /*<<< orphan*/  principal; } ;
struct TYPE_14__ {TYPE_6__ entry; } ;
typedef  TYPE_3__ hdb_entry_ex ;
struct TYPE_12__ {scalar_t__ length; } ;
struct TYPE_13__ {TYPE_1__ keyvalue; } ;
struct TYPE_15__ {TYPE_2__ key; } ;
typedef  TYPE_4__ Key ;

/* Variables and functions */
 scalar_t__ const ETYPE_NULL ; 
 scalar_t__ KRB5KDC_ERR_ETYPE_NOSUPP ; 
 scalar_t__ KRB5KDC_ERR_NULL_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_6__*,scalar_t__ const,TYPE_4__**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_6__*,scalar_t__,TYPE_4__**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC7 (int /*<<< orphan*/ ) ; 

krb5_error_code
FUNC8(krb5_context context, krb5_boolean use_strongest_session_key,
		krb5_boolean is_preauth, hdb_entry_ex *princ,
		krb5_enctype *etypes, unsigned len,
		krb5_enctype *ret_enctype, Key **ret_key)
{
    krb5_error_code ret;
    krb5_salt def_salt;
    krb5_enctype enctype = ETYPE_NULL;
    Key *key;
    int i;

    /* We'll want to avoid keys with v4 salted keys in the pre-auth case... */
    ret = FUNC6(context, princ->entry.principal, &def_salt);
    if (ret)
	return ret;

    ret = KRB5KDC_ERR_ETYPE_NOSUPP;

    if (use_strongest_session_key) {
	const krb5_enctype *p;
	krb5_enctype clientbest = ETYPE_NULL;
	int j;

	/*
	 * Pick the strongest key that the KDC, target service, and
	 * client all support, using the local cryptosystem enctype
	 * list in strongest-to-weakest order to drive the search.
	 *
	 * This is not what RFC4120 says to do, but it encourages
	 * adoption of stronger enctypes.  This doesn't play well with
	 * clients that have multiple Kerberos client implementations
	 * available with different supported enctype lists.
	 */

	/* drive the search with local supported enctypes list */
	p = FUNC7(context);
	for (i = 0; p[i] != ETYPE_NULL && enctype == ETYPE_NULL; i++) {
	    if (FUNC4(context, p[i]) != 0)
		continue;

	    /* check that the client supports it too */
	    for (j = 0; j < len && enctype == ETYPE_NULL; j++) {
		if (p[i] != etypes[j])
		    continue;
		/* save best of union of { client, crypto system } */
		if (clientbest == ETYPE_NULL)
		    clientbest = p[i];
		/* check target princ support */
		ret = FUNC1(context, &princ->entry, p[i], &key);
		if (ret)
		    continue;
		if (is_preauth && !FUNC3(&def_salt, key))
		    continue;
		enctype = p[i];
	    }
	}
	if (clientbest != ETYPE_NULL && enctype == ETYPE_NULL)
	    enctype = clientbest;
	else if (enctype == ETYPE_NULL)
	    ret = KRB5KDC_ERR_ETYPE_NOSUPP;
	if (ret == 0 && ret_enctype != NULL)
	    *ret_enctype = enctype;
	if (ret == 0 && ret_key != NULL)
	    *ret_key = key;
    } else {
	/*
	 * Pick the first key from the client's enctype list that is
	 * supported by the cryptosystem and by the given principal.
	 *
	 * RFC4120 says we SHOULD pick the first _strong_ key from the
	 * client's list... not the first key...  If the admin disallows
	 * weak enctypes in krb5.conf and selects this key selection
	 * algorithm, then we get exactly what RFC4120 says.
	 */
	for(key = NULL, i = 0; ret != 0 && i < len; i++, key = NULL) {

	    if (FUNC4(context, etypes[i]) != 0 &&
		!FUNC0(princ->entry.principal, etypes[i]))
		continue;

	    while (FUNC2(context, &princ->entry, etypes[i], &key) == 0) {
		if (key->key.keyvalue.length == 0) {
		    ret = KRB5KDC_ERR_NULL_KEY;
		    continue;
		}
		if (ret_key != NULL)
		    *ret_key = key;
		if (ret_enctype != NULL)
		    *ret_enctype = etypes[i];
		ret = 0;
		if (is_preauth && FUNC3(&def_salt, key))
		    goto out;
	    }
	}
    }

out:
    FUNC5 (context, def_salt);
    return ret;
}