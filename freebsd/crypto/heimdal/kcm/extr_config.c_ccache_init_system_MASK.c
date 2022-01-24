#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ krb5_error_code ;
typedef  TYPE_2__* kcm_ccache ;
struct TYPE_7__ {int /*<<< orphan*/  keytab; } ;
struct TYPE_8__ {scalar_t__ renew_life; scalar_t__ tkt_life; int mode; TYPE_1__ key; int /*<<< orphan*/  server; int /*<<< orphan*/  client; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KCM_FLAGS_OWNER_IS_SYSTEM ; 
 int /*<<< orphan*/  KCM_FLAGS_USE_KEYTAB ; 
 int disallow_getting_krbtgt ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,TYPE_2__**) ; 
 int /*<<< orphan*/  kcm_context ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 void* FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 void* FUNC9 (char*,char*) ; 
 char* renew_life ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,int*) ; 
 char* system_cache_name ; 
 int /*<<< orphan*/ * system_keytab ; 
 int /*<<< orphan*/ * system_perms ; 
 int /*<<< orphan*/ * system_principal ; 
 int /*<<< orphan*/ * system_server ; 
 char* ticket_life ; 

__attribute__((used)) static krb5_error_code
FUNC11(void)
{
    kcm_ccache ccache;
    krb5_error_code ret;

    if (system_cache_name == NULL)
	system_cache_name = FUNC3("cc_name");

    ret = FUNC1(kcm_context,
			 system_cache_name ? system_cache_name : "SYSTEM",
			 &ccache);
    if (ret)
	return ret;

    ccache->flags |= KCM_FLAGS_OWNER_IS_SYSTEM;
    ccache->flags |= KCM_FLAGS_USE_KEYTAB;

    ret = FUNC8(ccache);
    if (ret)
	return ret;

    ret = FUNC7(kcm_context, system_principal, &ccache->client);
    if (ret) {
	FUNC2(kcm_context, ccache);
	return ret;
    }

    if (system_server == NULL)
	system_server = FUNC3("server");

    if (system_server != NULL) {
	ret = FUNC7(kcm_context, system_server, &ccache->server);
	if (ret) {
	    FUNC2(kcm_context, ccache);
	    return ret;
	}
    }

    if (system_keytab == NULL)
	system_keytab = FUNC3("keytab_name");

    if (system_keytab != NULL) {
	ret = FUNC6(kcm_context, system_keytab, &ccache->key.keytab);
    } else {
	ret = FUNC5(kcm_context, &ccache->key.keytab);
    }
    if (ret) {
	FUNC2(kcm_context, ccache);
	return ret;
    }

    if (renew_life == NULL)
	renew_life = FUNC3("renew_life");

    if (renew_life == NULL)
	renew_life = "1 month";

    if (renew_life != NULL) {
	ccache->renew_life = FUNC9(renew_life, "s");
	if (ccache->renew_life < 0) {
	    FUNC2(kcm_context, ccache);
	    return EINVAL;
	}
    }

    if (ticket_life == NULL)
	ticket_life = FUNC3("ticket_life");

    if (ticket_life != NULL) {
	ccache->tkt_life = FUNC9(ticket_life, "s");
	if (ccache->tkt_life < 0) {
	    FUNC2(kcm_context, ccache);
	    return EINVAL;
	}
    }

    if (system_perms == NULL)
	system_perms = FUNC3("mode");

    if (system_perms != NULL) {
	int mode;

	if (FUNC10(system_perms, "%o", &mode) != 1)
	    return EINVAL;

	ccache->mode = mode;
    }

    if (disallow_getting_krbtgt == -1) {
	disallow_getting_krbtgt =
	    FUNC4(kcm_context, NULL, FALSE, "kcm",
					 "disallow-getting-krbtgt", NULL);
    }

    /* enqueue default actions for credentials cache */
    ret = FUNC0(kcm_context, ccache, NULL);

    FUNC2(kcm_context, ccache); /* retained by event queue */

    return ret;
}