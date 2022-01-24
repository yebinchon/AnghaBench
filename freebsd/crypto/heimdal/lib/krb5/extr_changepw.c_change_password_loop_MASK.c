#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct kpwd_proc {int flags; int (* send_req ) (int /*<<< orphan*/ ,int /*<<< orphan*/ **,TYPE_4__*,TYPE_2__*,int,scalar_t__,char const*,int /*<<< orphan*/ ) ;int (* process_rep ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct addrinfo {int ai_socktype; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
typedef  scalar_t__ rk_socket_t ;
typedef  scalar_t__ krb5_realm ;
typedef  TYPE_2__* krb5_principal ;
struct TYPE_13__ {int proto; int /*<<< orphan*/  hostname; } ;
typedef  TYPE_3__ krb5_krbhst_info ;
typedef  int /*<<< orphan*/ * krb5_krbhst_handle ;
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_data ;
struct TYPE_14__ {TYPE_1__* client; } ;
typedef  TYPE_4__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/ * krb5_auth_context ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_12__ {scalar_t__ realm; } ;
struct TYPE_11__ {scalar_t__ realm; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int KRB5KRB_AP_ERR_MUT_FAIL ; 
 int /*<<< orphan*/  KRB5_AUTH_CONTEXT_DO_SEQUENCE ; 
 int /*<<< orphan*/  KRB5_AUTH_CONTEXT_GENERATE_LOCAL_ADDR ; 
 int KRB5_KDC_UNREACH ; 
 int KRB5_KPASSWD_HARDERROR ; 
 int /*<<< orphan*/  KRB5_KRBHST_CHANGEPW ; 
#define  KRB5_KRBHST_TCP 129 
#define  KRB5_KRBHST_UDP 128 
 char* FUNC2 (char*,char*) ; 
 int SOCK_CLOEXEC ; 
 int SUPPORT_TCP ; 
 int SUPPORT_UDP ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_3__*,struct addrinfo**) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ rk_SOCK_ERRNO ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int FUNC17 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,TYPE_4__*,TYPE_2__*,int,scalar_t__,char const*,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC21 (krb5_context	context,
		      krb5_creds	*creds,
		      krb5_principal	targprinc,
		      const char	*newpw,
		      int		*result_code,
		      krb5_data		*result_code_string,
		      krb5_data		*result_string,
		      struct kpwd_proc	*proc)
{
    krb5_error_code ret;
    krb5_auth_context auth_context = NULL;
    krb5_krbhst_handle handle = NULL;
    krb5_krbhst_info *hi;
    rk_socket_t sock;
    unsigned int i;
    int done = 0;
    krb5_realm realm;

    if (targprinc)
	realm = targprinc->realm;
    else
	realm = creds->client->realm;

    ret = FUNC6 (context, &auth_context);
    if (ret)
	return ret;

    FUNC7 (context, auth_context,
			    KRB5_AUTH_CONTEXT_DO_SEQUENCE);

    ret = FUNC10 (context, realm, KRB5_KRBHST_CHANGEPW, &handle);
    if (ret)
	goto out;

    while (!done && (ret = FUNC11(context, handle, &hi)) == 0) {
	struct addrinfo *ai, *a;
	int is_stream;

	switch (hi->proto) {
	case KRB5_KRBHST_UDP:
	    if ((proc->flags & SUPPORT_UDP) == 0)
		continue;
	    is_stream = 0;
	    break;
	case KRB5_KRBHST_TCP:
	    if ((proc->flags & SUPPORT_TCP) == 0)
		continue;
	    is_stream = 1;
	    break;
	default:
	    continue;
	}

	ret = FUNC9(context, hi, &ai);
	if (ret)
	    continue;

	for (a = ai; !done && a != NULL; a = a->ai_next) {
	    int replied = 0;

	    sock = FUNC18 (a->ai_family, a->ai_socktype | SOCK_CLOEXEC, a->ai_protocol);
	    if (FUNC13(sock))
		continue;
	    FUNC15(sock);

	    ret = FUNC3(sock, a->ai_addr, a->ai_addrlen);
	    if (FUNC14(ret)) {
		FUNC16 (sock);
		goto out;
	    }

	    ret = FUNC5 (context, auth_context, sock,
					  KRB5_AUTH_CONTEXT_GENERATE_LOCAL_ADDR);
	    if (ret) {
		FUNC16 (sock);
		goto out;
	    }

	    for (i = 0; !done && i < 5; ++i) {
		fd_set fdset;
		struct timeval tv;

		if (!replied) {
		    replied = 0;

		    ret = (*proc->send_req) (context,
					     &auth_context,
					     creds,
					     targprinc,
					     is_stream,
					     sock,
					     newpw,
					     hi->hostname);
		    if (ret) {
			FUNC16(sock);
			goto out;
		    }
		}

#ifndef NO_LIMIT_FD_SETSIZE
		if (sock >= FD_SETSIZE) {
		    ret = ERANGE;
		    FUNC12(context, ret,
					   "fd %d too large", sock);
		    FUNC16 (sock);
		    goto out;
		}
#endif

		FUNC1(&fdset);
		FUNC0(sock, &fdset);
		tv.tv_usec = 0;
		tv.tv_sec  = 1 + (1 << i);

		ret = FUNC17 (sock + 1, &fdset, NULL, NULL, &tv);
		if (FUNC14(ret) && rk_SOCK_ERRNO != EINTR) {
		    FUNC16(sock);
		    goto out;
		}
		if (ret == 1) {
		    ret = (*proc->process_rep) (context,
						auth_context,
						is_stream,
						sock,
						result_code,
						result_code_string,
						result_string,
						hi->hostname);
		    if (ret == 0)
			done = 1;
		    else if (i > 0 && ret == KRB5KRB_AP_ERR_MUT_FAIL)
			replied = 1;
		} else {
		    ret = KRB5_KDC_UNREACH;
		}
	    }
	    FUNC16 (sock);
	}
    }

 out:
    FUNC8 (context, handle);
    FUNC4 (context, auth_context);

    if (ret == KRB5_KDC_UNREACH) {
	FUNC12(context,
			       ret,
			       FUNC2("Unable to reach any changepw server "
				 " in realm %s", "realm"), realm);
	*result_code = KRB5_KPASSWD_HARDERROR;
    }
    return ret;
}