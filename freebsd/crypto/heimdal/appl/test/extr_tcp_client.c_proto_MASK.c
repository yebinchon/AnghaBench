#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_8__ {char* data; int length; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_auth_context ;

/* Variables and functions */
 int /*<<< orphan*/  AP_OPTS_MUTUAL_REQUIRED ; 
 int /*<<< orphan*/  KRB5_NT_SRV_HST ; 
 int /*<<< orphan*/  VERSION ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int*,int*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12 (int sock, const char *hostname, const char *service)
{
    krb5_auth_context auth_context;
    krb5_error_code status;
    krb5_principal server;
    krb5_data data;
    krb5_data packet;
    uint32_t len, net_len;

    status = FUNC2 (context, &auth_context);
    if (status)
	FUNC6 (context, 1, status, "krb5_auth_con_init");

    status = FUNC3 (context,
					     auth_context,
					     &sock);
    if (status)
	FUNC6 (context, 1, status, "krb5_auth_con_setaddrs_from_fd");

    status = FUNC11 (context,
				      hostname,
				      service,
				      KRB5_NT_SRV_HST,
				      &server);
    if (status)
	FUNC6 (context, 1, status, "krb5_sname_to_principal");

    status = FUNC10 (context,
			    &auth_context,
			    &sock,
			    VERSION,
			    NULL,
			    server,
			    AP_OPTS_MUTUAL_REQUIRED,
			    NULL,
			    NULL,
			    NULL,
			    NULL,
			    NULL,
			    NULL);
    if (status)
	FUNC6 (context, 1, status, "krb5_sendauth");

    data.data   = "hej";
    data.length = 3;

    FUNC5 (&packet);

    status = FUNC8 (context,
			   auth_context,
			   &data,
			   &packet,
			   NULL);
    if (status)
	FUNC6 (context, 1, status, "krb5_mk_safe");

    len = packet.length;
    net_len = FUNC1(len);

    if (FUNC9 (context, &sock, &net_len, 4) != 4)
	FUNC0 (1, "krb5_net_write");
    if (FUNC9 (context, &sock, packet.data, len) != len)
	FUNC0 (1, "krb5_net_write");

    data.data   = "hemligt";
    data.length = 7;

    FUNC4 (&packet);

    status = FUNC7 (context,
			   auth_context,
			   &data,
			   &packet,
			   NULL);
    if (status)
	FUNC6 (context, 1, status, "krb5_mk_priv");

    len = packet.length;
    net_len = FUNC1(len);

    if (FUNC9 (context, &sock, &net_len, 4) != 4)
	FUNC0 (1, "krb5_net_write");
    if (FUNC9 (context, &sock, packet.data, len) != len)
	FUNC0 (1, "krb5_net_write");
    return 0;
}