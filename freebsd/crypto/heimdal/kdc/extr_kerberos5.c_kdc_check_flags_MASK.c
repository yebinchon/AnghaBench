#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  starttime_str ;
typedef  int /*<<< orphan*/  pwend_str ;
typedef  int /*<<< orphan*/  krb5_kdc_configuration ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_boolean ;
struct TYPE_6__ {scalar_t__ initial; int /*<<< orphan*/  server; scalar_t__ invalid; scalar_t__ locked_out; int /*<<< orphan*/  change_pw; int /*<<< orphan*/  client; } ;
struct TYPE_8__ {scalar_t__* valid_start; scalar_t__* valid_end; scalar_t__* pw_end; TYPE_1__ flags; } ;
struct TYPE_7__ {TYPE_3__ entry; } ;
typedef  TYPE_2__ hdb_entry_ex ;
typedef  TYPE_3__ hdb_entry ;
typedef  int /*<<< orphan*/  endtime_str ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5KDC_ERR_CLIENT_NOTYET ; 
 int /*<<< orphan*/  KRB5KDC_ERR_KEY_EXPIRED ; 
 int /*<<< orphan*/  KRB5KDC_ERR_NAME_EXP ; 
 int /*<<< orphan*/  KRB5KDC_ERR_POLICY ; 
 int /*<<< orphan*/  KRB5KDC_ERR_SERVICE_EXP ; 
 int /*<<< orphan*/  KRB5KDC_ERR_SERVICE_NOTYET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,...) ; 
 scalar_t__ kdc_time ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*,int,int /*<<< orphan*/ ) ; 

krb5_error_code
FUNC2(krb5_context context,
		krb5_kdc_configuration *config,
		hdb_entry_ex *client_ex, const char *client_name,
		hdb_entry_ex *server_ex, const char *server_name,
		krb5_boolean is_as_req)
{
    if(client_ex != NULL) {
	hdb_entry *client = &client_ex->entry;

	/* check client */
	if (client->flags.locked_out) {
	    FUNC0(context, config, 0,
		    "Client (%s) is locked out", client_name);
	    return KRB5KDC_ERR_POLICY;
	}

	if (client->flags.invalid) {
	    FUNC0(context, config, 0,
		    "Client (%s) has invalid bit set", client_name);
	    return KRB5KDC_ERR_POLICY;
	}

	if(!client->flags.client){
	    FUNC0(context, config, 0,
		    "Principal may not act as client -- %s", client_name);
	    return KRB5KDC_ERR_POLICY;
	}

	if (client->valid_start && *client->valid_start > kdc_time) {
	    char starttime_str[100];
	    FUNC1(context, *client->valid_start,
			     starttime_str, sizeof(starttime_str), TRUE);
	    FUNC0(context, config, 0,
		    "Client not yet valid until %s -- %s",
		    starttime_str, client_name);
	    return KRB5KDC_ERR_CLIENT_NOTYET;
	}

	if (client->valid_end && *client->valid_end < kdc_time) {
	    char endtime_str[100];
	    FUNC1(context, *client->valid_end,
			     endtime_str, sizeof(endtime_str), TRUE);
	    FUNC0(context, config, 0,
		    "Client expired at %s -- %s",
		    endtime_str, client_name);
	    return KRB5KDC_ERR_NAME_EXP;
	}

	if (client->pw_end && *client->pw_end < kdc_time
	    && (server_ex == NULL || !server_ex->entry.flags.change_pw)) {
	    char pwend_str[100];
	    FUNC1(context, *client->pw_end,
			     pwend_str, sizeof(pwend_str), TRUE);
	    FUNC0(context, config, 0,
		    "Client's key has expired at %s -- %s",
		    pwend_str, client_name);
	    return KRB5KDC_ERR_KEY_EXPIRED;
	}
    }

    /* check server */

    if (server_ex != NULL) {
	hdb_entry *server = &server_ex->entry;

	if (server->flags.locked_out) {
	    FUNC0(context, config, 0,
		    "Client server locked out -- %s", server_name);
	    return KRB5KDC_ERR_POLICY;
	}
	if (server->flags.invalid) {
	    FUNC0(context, config, 0,
		    "Server has invalid flag set -- %s", server_name);
	    return KRB5KDC_ERR_POLICY;
	}

	if(!server->flags.server){
	    FUNC0(context, config, 0,
		    "Principal may not act as server -- %s", server_name);
	    return KRB5KDC_ERR_POLICY;
	}

	if(!is_as_req && server->flags.initial) {
	    FUNC0(context, config, 0,
		    "AS-REQ is required for server -- %s", server_name);
	    return KRB5KDC_ERR_POLICY;
	}

	if (server->valid_start && *server->valid_start > kdc_time) {
	    char starttime_str[100];
	    FUNC1(context, *server->valid_start,
			     starttime_str, sizeof(starttime_str), TRUE);
	    FUNC0(context, config, 0,
		    "Server not yet valid until %s -- %s",
		    starttime_str, server_name);
	    return KRB5KDC_ERR_SERVICE_NOTYET;
	}

	if (server->valid_end && *server->valid_end < kdc_time) {
	    char endtime_str[100];
	    FUNC1(context, *server->valid_end,
			     endtime_str, sizeof(endtime_str), TRUE);
	    FUNC0(context, config, 0,
		    "Server expired at %s -- %s",
		    endtime_str, server_name);
	    return KRB5KDC_ERR_SERVICE_EXP;
	}

	if (server->pw_end && *server->pw_end < kdc_time) {
	    char pwend_str[100];
	    FUNC1(context, *server->pw_end,
			     pwend_str, sizeof(pwend_str), TRUE);
	    FUNC0(context, config, 0,
		    "Server's key has expired at -- %s",
		    pwend_str, server_name);
	    return KRB5KDC_ERR_KEY_EXPIRED;
	}
    }
    return 0;
}