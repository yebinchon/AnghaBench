#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_13__ {int member_0; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  gss_buffer_t ;
struct TYPE_12__ {int /*<<< orphan*/  realm; int /*<<< orphan*/  sname; } ;
struct TYPE_14__ {TYPE_1__ ticket; } ;
typedef  scalar_t__ OM_uint32 ;
typedef  TYPE_3__ AP_REQ ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_KRB5_MECHANISM ; 
 scalar_t__ GSS_S_CONTINUE_NEEDED ; 
 scalar_t__ GSS_S_FAILURE ; 
 scalar_t__ FUNC0 (scalar_t__*,TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static OM_uint32
FUNC8(OM_uint32 *minor_status,
		 krb5_context context,
		 krb5_error_code kret,
		 krb5_principal server,
		 krb5_data *indata,
		 gss_buffer_t output_token)
{
    krb5_principal ap_req_server = NULL;
    krb5_error_code ret;
    krb5_data outbuf;
    /* this e_data value encodes KERB_AP_ERR_TYPE_SKEW_RECOVERY which
       tells windows to try again with the corrected timestamp. See
       [MS-KILE] 2.2.1 KERB-ERROR-DATA */
    krb5_data e_data = { 7, FUNC7("\x30\x05\xa1\x03\x02\x01\x02") };

    /* build server from request if the acceptor had not selected one */
    if (server == NULL) {
	AP_REQ ap_req;

	ret = FUNC4(context, indata, &ap_req);
	if (ret) {
	    *minor_status = ret;
	    return GSS_S_FAILURE;
	}
	ret = FUNC1(context,
						  &ap_req_server,
						  ap_req.ticket.sname,
						  ap_req.ticket.realm);
	FUNC2(&ap_req);
	if (ret) {
	    *minor_status = ret;
	    return GSS_S_FAILURE;
	}
	server = ap_req_server;
    }

    ret = FUNC6(context, kret, NULL, &e_data, NULL,
			server, NULL, NULL, &outbuf);
    if (ap_req_server)
	FUNC5(context, ap_req_server);
    if (ret) {
	*minor_status = ret;
	return GSS_S_FAILURE;
    }

    ret = FUNC0(minor_status,
			       &outbuf,
			       output_token,
			       "\x03\x00",
			       GSS_KRB5_MECHANISM);
    FUNC3 (&outbuf);
    if (ret)
	return ret;

    *minor_status = 0;
    return GSS_S_CONTINUE_NEEDED;
}