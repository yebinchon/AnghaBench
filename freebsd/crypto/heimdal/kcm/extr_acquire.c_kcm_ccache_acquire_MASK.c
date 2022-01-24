#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_get_init_creds_opt ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_const_realm ;
typedef  int /*<<< orphan*/  krb5_ccache_data ;
typedef  TYPE_3__* kcm_ccache ;
typedef  int /*<<< orphan*/  cred ;
struct TYPE_10__ {scalar_t__ length; } ;
struct TYPE_13__ {TYPE_1__ keyvalue; } ;
struct TYPE_11__ {int /*<<< orphan*/ * keytab; TYPE_4__ keyblock; } ;
struct TYPE_12__ {int flags; scalar_t__ tkt_life; scalar_t__ renew_life; int /*<<< orphan*/  mutex; int /*<<< orphan*/  name; TYPE_2__ key; int /*<<< orphan*/  client; int /*<<< orphan*/ * server; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int KCM_FLAGS_USE_CACHED_KEY ; 
 int KCM_FLAGS_USE_KEYTAB ; 
 scalar_t__ KRB5_FCC_INTERNAL ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

krb5_error_code
FUNC21(krb5_context context,
		   kcm_ccache ccache,
		   krb5_creds **credp)
{
    krb5_error_code ret = 0;
    krb5_creds cred;
    krb5_const_realm realm;
    krb5_get_init_creds_opt *opt = NULL;
    krb5_ccache_data ccdata;
    char *in_tkt_service = NULL;

    FUNC20(&cred, 0, sizeof(cred));

    FUNC2(ccache);

    /* We need a cached key or keytab to acquire credentials */
    if (ccache->flags & KCM_FLAGS_USE_CACHED_KEY) {
	if (ccache->key.keyblock.keyvalue.length == 0)
	    FUNC8(context,
			"kcm_ccache_acquire: KCM_FLAGS_USE_CACHED_KEY without key");
    } else if (ccache->flags & KCM_FLAGS_USE_KEYTAB) {
	if (ccache->key.keytab == NULL)
	    FUNC8(context,
			"kcm_ccache_acquire: KCM_FLAGS_USE_KEYTAB without keytab");
    } else {
	FUNC7(0, "Cannot acquire initial credentials for cache %s without key",
		ccache->name);
	return KRB5_FCC_INTERNAL;
    }

    FUNC0(&ccache->mutex);

    /* Fake up an internal ccache */
    FUNC6(context, ccache, &ccdata);

    /* Now, actually acquire the creds */
    if (ccache->server != NULL) {
	ret = FUNC19(context, ccache->server, &in_tkt_service);
	if (ret) {
	    FUNC7(0, "Failed to unparse service principal name for cache %s: %s",
		    ccache->name, FUNC10(context, ret));
	    return ret;
	}
    }

    realm = FUNC18(context, ccache->client);

    ret = FUNC13(context, &opt);
    if (ret)
	goto out;
    FUNC15(context, "kcm", realm, opt);
    if (ccache->tkt_life != 0)
	FUNC17(opt, ccache->tkt_life);
    if (ccache->renew_life != 0)
	FUNC16(opt, ccache->renew_life);

    if (ccache->flags & KCM_FLAGS_USE_CACHED_KEY) {
	ret = FUNC11(context,
					   &cred,
					   ccache->client,
					   &ccache->key.keyblock,
					   0,
					   in_tkt_service,
					   opt);
    } else {
	/* loosely based on lib/krb5/init_creds_pw.c */
	ret = FUNC12(context,
					 &cred,
					 ccache->client,
					 ccache->key.keytab,
					 0,
					 in_tkt_service,
					 opt);
    }

    if (ret) {
	FUNC7(0, "Failed to acquire credentials for cache %s: %s",
		ccache->name, FUNC10(context, ret));
	if (in_tkt_service != NULL)
	    FUNC3(in_tkt_service);
	goto out;
    }

    if (in_tkt_service != NULL)
	FUNC3(in_tkt_service);

    /* Swap them in */
    FUNC4(context, ccache);

    ret = FUNC5(context, ccache, &cred, 0, credp);
    if (ret) {
	FUNC7(0, "Failed to store credentials for cache %s: %s",
		ccache->name, FUNC10(context, ret));
	FUNC9(context, &cred);
	goto out;
    }

out:
    if (opt)
	FUNC14(context, opt);

    FUNC1(&ccache->mutex);

    return ret;
}