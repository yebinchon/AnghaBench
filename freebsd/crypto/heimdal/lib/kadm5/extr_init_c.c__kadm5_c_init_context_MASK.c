#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  scalar_t__ kadm5_ret_t ;
struct TYPE_11__ {int mask; char* realm; char* admin_server; scalar_t__ kadmind_port; } ;
typedef  TYPE_1__ kadm5_config_params ;
struct TYPE_12__ {scalar_t__ kadmind_port; int /*<<< orphan*/ * admin_server; struct TYPE_12__* realm; int /*<<< orphan*/  context; } ;
typedef  TYPE_2__ kadm5_client_context ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int KADM5_CONFIG_ADMIN_SERVER ; 
 int KADM5_CONFIG_KADMIND_PORT ; 
 int KADM5_CONFIG_REALM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  initialize_kadm5_error_table_r ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__**,char***) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,char*,int) ; 
 TYPE_2__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 char* FUNC10 (int /*<<< orphan*/ *,char) ; 
 void* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char**,int /*<<< orphan*/ ) ; 

kadm5_ret_t
FUNC13(kadm5_client_context **ctx,
		      kadm5_config_params *params,
		      krb5_context context)
{
    krb5_error_code ret;
    char *colon;

    *ctx = FUNC7(sizeof(**ctx));
    if(*ctx == NULL)
	return ENOMEM;
    FUNC8(*ctx, 0, sizeof(**ctx));
    FUNC2 (context, initialize_kadm5_error_table_r);
    FUNC9(*ctx);
    (*ctx)->context = context;
    if(params->mask & KADM5_CONFIG_REALM) {
	ret = 0;
	(*ctx)->realm = FUNC11(params->realm);
	if ((*ctx)->realm == NULL)
	    ret = ENOMEM;
    } else
	ret = FUNC4((*ctx)->context, &(*ctx)->realm);
    if (ret) {
	FUNC0(*ctx);
	return ret;
    }
    if(params->mask & KADM5_CONFIG_ADMIN_SERVER)
	(*ctx)->admin_server = FUNC11(params->admin_server);
    else {
	char **hostlist;

	ret = FUNC5 (context, &(*ctx)->realm, &hostlist);
	if (ret) {
	    FUNC0((*ctx)->realm);
	    FUNC0(*ctx);
	    return ret;
	}
	(*ctx)->admin_server = FUNC11(*hostlist);
	FUNC3 (context, hostlist);
    }

    if ((*ctx)->admin_server == NULL) {
	FUNC0((*ctx)->realm);
	FUNC0(*ctx);
	return ENOMEM;
    }
    colon = FUNC10 ((*ctx)->admin_server, ':');
    if (colon != NULL)
	*colon++ = '\0';

    (*ctx)->kadmind_port = 0;

    if(params->mask & KADM5_CONFIG_KADMIND_PORT)
	(*ctx)->kadmind_port = params->kadmind_port;
    else if (colon != NULL) {
	char *end;

	(*ctx)->kadmind_port = FUNC1(FUNC12 (colon, &end, 0));
    }
    if ((*ctx)->kadmind_port == 0)
	(*ctx)->kadmind_port = FUNC6 (context, "kerberos-adm",
						   "tcp", 749);
    return 0;
}