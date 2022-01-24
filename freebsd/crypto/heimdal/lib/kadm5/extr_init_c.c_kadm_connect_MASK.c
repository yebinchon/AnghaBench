#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; scalar_t__ realm; int /*<<< orphan*/  mask; struct addrinfo* ai_next; } ;
typedef  scalar_t__ rk_socket_t ;
typedef  int /*<<< orphan*/  portstr ;
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  scalar_t__ kadm5_ret_t ;
typedef  struct addrinfo kadm5_config_params ;
struct TYPE_3__ {char* admin_server; scalar_t__ sock; int /*<<< orphan*/ * ccache; int /*<<< orphan*/ * ac; scalar_t__ realm; int /*<<< orphan*/  keytab; int /*<<< orphan*/  prompter; int /*<<< orphan*/  service_name; int /*<<< orphan*/  client_name; int /*<<< orphan*/  kadmind_port; int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ kadm5_client_context ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AP_OPTS_MUTUAL_REQUIRED ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  KADM5_ADMIN_SERVICE ; 
 scalar_t__ KADM5_BAD_SERVER_NAME ; 
 int /*<<< orphan*/  KADM5_CONFIG_REALM ; 
 scalar_t__ KADM5_FAILURE ; 
 int /*<<< orphan*/  KADMIN_APPL_VERSION ; 
 int /*<<< orphan*/  KADMIN_OLD_APPL_VERSION ; 
 scalar_t__ KRB5_SENDAUTH_BADAPPLVERS ; 
 int NI_MAXSERV ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct addrinfo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*) ; 
 int FUNC6 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ rk_INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC21 (char*,char) ; 

__attribute__((used)) static kadm5_ret_t
FUNC22(kadm5_client_context *ctx)
{
    kadm5_ret_t ret;
    krb5_principal server;
    krb5_ccache cc;
    rk_socket_t s = rk_INVALID_SOCKET;
    struct addrinfo *ai, *a;
    struct addrinfo hints;
    int error;
    char portstr[NI_MAXSERV];
    char *hostname, *slash;
    char *service_name;
    krb5_context context = ctx->context;

    FUNC16 (&hints, 0, sizeof(hints));
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;

    FUNC19 (portstr, sizeof(portstr), "%u", FUNC17(ctx->kadmind_port));

    hostname = ctx->admin_server;
    slash = FUNC21 (hostname, '/');
    if (slash != NULL)
	hostname = slash + 1;

    error = FUNC6 (hostname, portstr, &hints, &ai);
    if (error) {
	FUNC8(context);
	return KADM5_BAD_SERVER_NAME;
    }

    for (a = ai; a != NULL; a = a->ai_next) {
	s = FUNC20 (a->ai_family, a->ai_socktype, a->ai_protocol);
	if (s < 0)
	    continue;
	if (FUNC3 (s, a->ai_addr, a->ai_addrlen) < 0) {
	    FUNC8(context);
	    FUNC13 (context, errno, "connect(%s)", hostname);
	    FUNC18 (s);
	    continue;
	}
	break;
    }
    if (a == NULL) {
	FUNC5 (ai);
	FUNC8(context);
	FUNC14 (context, "failed to contact %s", hostname);
	return KADM5_FAILURE;
    }
    ret = FUNC0(context,
				  ctx->client_name,
				  ctx->service_name,
				  NULL, ctx->prompter, ctx->keytab,
				  ctx->ccache, &cc);

    if(ret) {
	FUNC5 (ai);
	FUNC18(s);
	return ret;
    }

    if (ctx->realm)
	FUNC2(&service_name, "%d@%ld", KADM5_ADMIN_SERVICE, ctx->realm);
    else
	FUNC2(&service_name, "%d", KADM5_ADMIN_SERVICE);

    if (service_name == NULL) {
	FUNC5 (ai);
	FUNC18(s);
	FUNC8(context);
	return ENOMEM;
    }

    ret = FUNC11(context, service_name, &server);
    FUNC4(service_name);
    if(ret) {
	FUNC5 (ai);
	if(ctx->ccache == NULL)
	    FUNC7(context, cc);
	FUNC18(s);
	return ret;
    }
    ctx->ac = NULL;

    ret = FUNC12(context, &ctx->ac, &s,
			KADMIN_APPL_VERSION, NULL,
			server, AP_OPTS_MUTUAL_REQUIRED,
			NULL, NULL, cc, NULL, NULL, NULL);
    if(ret == 0) {
	krb5_data params;
	kadm5_config_params p;
	FUNC16(&p, 0, sizeof(p));
	if(ctx->realm) {
	    p.mask |= KADM5_CONFIG_REALM;
	    p.realm = ctx->realm;
	}
	ret = FUNC1(context, &p, &params);

	ret = FUNC15(context, ctx->ac, &s, &params);
	FUNC9(&params);
	if(ret) {
	    FUNC5 (ai);
	    FUNC18(s);
	    if(ctx->ccache == NULL)
		FUNC7(context, cc);
	    return ret;
	}
    } else if(ret == KRB5_SENDAUTH_BADAPPLVERS) {
	FUNC18(s);

	s = FUNC20 (a->ai_family, a->ai_socktype, a->ai_protocol);
	if (s < 0) {
	    FUNC5 (ai);
	    FUNC8(context);
	    return errno;
	}
	if (FUNC3 (s, a->ai_addr, a->ai_addrlen) < 0) {
	    FUNC18 (s);
	    FUNC5 (ai);
	    FUNC8(context);
	    return errno;
	}
	ret = FUNC12(context, &ctx->ac, &s,
			    KADMIN_OLD_APPL_VERSION, NULL,
			    server, AP_OPTS_MUTUAL_REQUIRED,
			    NULL, NULL, cc, NULL, NULL, NULL);
    }
    FUNC5 (ai);
    if(ret) {
	FUNC18(s);
	return ret;
    }

    FUNC10(context, server);
    if(ctx->ccache == NULL)
	FUNC7(context, cc);
    ctx->sock = s;

    return 0;
}