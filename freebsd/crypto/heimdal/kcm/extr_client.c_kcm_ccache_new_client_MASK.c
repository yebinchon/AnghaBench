#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct passwd {int /*<<< orphan*/  pw_gid; } ;
typedef  int /*<<< orphan*/  prefix ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_15__ {scalar_t__ uid; scalar_t__ gid; int /*<<< orphan*/  session; } ;
typedef  TYPE_1__ kcm_client ;
typedef  TYPE_2__* kcm_ccache ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_16__ {scalar_t__ uid; scalar_t__ gid; int /*<<< orphan*/  session; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  KCM_OP_INITIALIZE ; 
 scalar_t__ KRB5_CC_BADNAME ; 
 scalar_t__ KRB5_FCC_NOFILE ; 
 scalar_t__ KRB5_FCC_PERM ; 
 struct passwd* FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,TYPE_2__**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ name_constraints ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,long) ; 
 int FUNC13 (char const*,char*,unsigned long*) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 size_t FUNC15 (char*) ; 
 scalar_t__ FUNC16 (char const*,char*,size_t) ; 

krb5_error_code
FUNC17(krb5_context context,
		      kcm_client *client,
		      const char *name,
		      kcm_ccache *ccache_p)
{
    krb5_error_code ret;
    kcm_ccache ccache;

    /* We insist the ccache name starts with UID or UID: */
    if (name_constraints != 0) {
	char prefix[64];
	size_t prefix_len;
	int bad = 1;

	FUNC12(prefix, sizeof(prefix), "%ld:", (long)client->uid);
	prefix_len = FUNC15(prefix);

	if (FUNC16(name, prefix, prefix_len) == 0)
	    bad = 0;
	else {
	    prefix[prefix_len - 1] = '\0';
	    if (FUNC14(name, prefix) == 0)
		bad = 0;
	}

	/* Allow root to create badly-named ccaches */
	if (bad && !FUNC0(client))
	    return KRB5_CC_BADNAME;
    }

    ret = FUNC5(context, name, &ccache);
    if (ret == 0) {
	if ((ccache->uid != client->uid ||
	     ccache->gid != client->gid) && !FUNC0(client))
	    return KRB5_FCC_PERM;
    } else if (ret != KRB5_FCC_NOFILE && !(FUNC0(client) && ret == KRB5_FCC_PERM)) {
		return ret;
    }

    if (ret == KRB5_FCC_NOFILE) {
	ret = FUNC4(context, name, &ccache);
	if (ret) {
	    FUNC8(1, "Failed to initialize cache %s: %s",
		    name, FUNC11(context, ret));
	    return ret;
	}

	/* bind to current client */
	ccache->uid = client->uid;
	ccache->gid = client->gid;
	ccache->session = client->session;
    } else {
	ret = FUNC10(context, ccache);
	if (ret) {
	    FUNC8(1, "Failed to empty cache %s: %s",
		    name, FUNC11(context, ret));
	    FUNC9(context, ccache);
	    return ret;
	}
	FUNC7(context, ccache);
    }

    ret = FUNC2(context, client, KCM_OP_INITIALIZE, ccache);
    if (ret) {
	FUNC9(context, ccache);
	FUNC3(context, name);
	return ret;
    }

    /*
     * Finally, if the user is root and the cache was created under
     * another user's name, chown the cache to that user and their
     * default gid.
     */
    if (FUNC0(client)) {
	unsigned long uid;
	int matches = FUNC13(name,"%ld:",&uid);
	if (matches == 0)
	    matches = FUNC13(name,"%ld",&uid);
	if (matches == 1) {
	    struct passwd *pwd = FUNC1(uid);
	    if (pwd != NULL) {
		gid_t gid = pwd->pw_gid;
		FUNC6(context, client, ccache, uid, gid);
	    }
	}
    }

    *ccache_p = ccache;
    return 0;
}