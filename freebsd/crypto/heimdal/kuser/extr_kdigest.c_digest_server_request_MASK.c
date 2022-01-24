#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct digest_server_request_options {int /*<<< orphan*/  kerberos_realm_string; int /*<<< orphan*/ * client_response_string; int /*<<< orphan*/ * opaque_string; int /*<<< orphan*/  client_nonce_string; int /*<<< orphan*/ * server_nonce_string; int /*<<< orphan*/  username_string; int /*<<< orphan*/ * type_string; int /*<<< orphan*/ * server_identifier_string; } ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_digest ;
struct TYPE_4__ {scalar_t__ length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;

/* Variables and functions */
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,char**) ; 
 int /*<<< orphan*/  id ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,char*) ; 

int
FUNC21(struct digest_server_request_options *opt,
		      int argc, char **argv)
{
    krb5_error_code ret;
    krb5_digest digest;
    const char *status, *rsp;
    krb5_data session_key;

    if (opt->server_nonce_string == NULL)
	FUNC0(1, "server nonce missing");
    if (opt->type_string == NULL)
	FUNC0(1, "type missing");
    if (opt->opaque_string == NULL)
	FUNC0(1, "opaque missing");
    if (opt->client_response_string == NULL)
	FUNC0(1, "client response missing");

    ret = FUNC4(context, &digest);
    if (ret)
	FUNC17(context, 1, ret, "digest_alloc");

    if (FUNC20(opt->type_string, "CHAP") == 0) {
	if (opt->server_identifier_string == NULL)
	    FUNC0(1, "server identifier missing");

	ret = FUNC11(context, digest,
					 opt->server_identifier_string);
	if (ret)
	    FUNC17(context, 1, ret, "krb5_digest_set_type");
    }

    ret = FUNC15(context, digest, opt->type_string);
    if (ret)
	FUNC17(context, 1, ret, "krb5_digest_set_type");

    ret = FUNC16(context, digest, opt->username_string);
    if (ret)
	FUNC17(context, 1, ret, "krb5_digest_set_username");

    ret = FUNC14(context, digest,
				       opt->server_nonce_string);
    if (ret)
	FUNC17(context, 1, ret, "krb5_digest_set_server_nonce");

    if(opt->client_nonce_string) {
	ret = FUNC10(context, digest,
					   opt->client_nonce_string);
	if (ret)
	    FUNC17(context, 1, ret, "krb5_digest_set_client_nonce");
    }


    ret = FUNC12(context, digest, opt->opaque_string);
    if (ret)
	FUNC17(context, 1, ret, "krb5_digest_set_opaque");

    ret = FUNC13(context, digest,
				       opt->client_response_string);
    if (ret)
	FUNC17(context, 1, ret, "krb5_digest_set_responseData");

    ret = FUNC9(context, digest,
			      opt->kerberos_realm_string, id);
    if (ret)
	FUNC17(context, 1, ret, "krb5_digest_request");

    status = FUNC8(context, digest) ? "ok" : "failed";
    rsp = FUNC6(context, digest);

    FUNC19("status=%s\n", status);
    if (rsp)
	FUNC19("rsp=%s\n", rsp);
    FUNC19("tickets=no\n");

    ret = FUNC7(context, digest, &session_key);
    if (ret)
	FUNC17(context, 1, ret, "krb5_digest_get_session_key");

    if (session_key.length) {
	char *key;
	FUNC2(session_key.data, session_key.length, &key);
	if (key == NULL)
	    FUNC18(context, 1, "hex_encode");
	FUNC3(&session_key);
	FUNC19("session-key=%s\n", key);
	FUNC1(key);
    }

    FUNC5(digest);

    return 0;
}