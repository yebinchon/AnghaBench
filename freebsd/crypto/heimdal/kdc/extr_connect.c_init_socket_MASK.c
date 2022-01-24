#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct descr {int type; int port; void* s; } ;
typedef  int /*<<< orphan*/  one ;
typedef  int krb5_socklen_t ;
typedef  int /*<<< orphan*/  krb5_kdc_configuration ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_address ;
typedef  int /*<<< orphan*/  a_str ;
typedef  int /*<<< orphan*/  __ss ;

/* Variables and functions */
 int SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  FUNC0 (void*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct descr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sockaddr*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 void* rk_INVALID_SOCKET ; 
 scalar_t__ FUNC7 (void*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 void* FUNC11 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(krb5_context context,
	    krb5_kdc_configuration *config,
	    struct descr *d, krb5_address *a, int family, int type, int port)
{
    krb5_error_code ret;
    struct sockaddr_storage __ss;
    struct sockaddr *sa = (struct sockaddr *)&__ss;
    krb5_socklen_t sa_size = sizeof(__ss);

    FUNC1 (d);

    ret = FUNC2 (context, a, sa, &sa_size, port);
    if (ret) {
	FUNC4(context, ret, "krb5_addr2sockaddr");
	FUNC9(d->s);
	d->s = rk_INVALID_SOCKET;
	return;
    }

    if (sa->sa_family != family)
	return;

    d->s = FUNC11(family, type, 0);
    if(FUNC7(d->s)){
	FUNC4(context, errno, "socket(%d, %d, 0)", family, type);
	d->s = rk_INVALID_SOCKET;
	return;
    }
#if defined(HAVE_SETSOCKOPT) && defined(SOL_SOCKET) && defined(SO_REUSEADDR)
    {
	int one = 1;
	setsockopt(d->s, SOL_SOCKET, SO_REUSEADDR, (void *)&one, sizeof(one));
    }
#endif
    d->type = type;
    d->port = port;

    if(FUNC8(FUNC0(d->s, sa, sa_size))){
	char a_str[256];
	size_t len;

	FUNC3 (a, a_str, sizeof(a_str), &len);
	FUNC4(context, errno, "bind %s/%d", a_str, FUNC6(port));
	FUNC9(d->s);
	d->s = rk_INVALID_SOCKET;
	return;
    }
    if(type == SOCK_STREAM && FUNC8(FUNC5(d->s, SOMAXCONN))){
	char a_str[256];
	size_t len;

	FUNC3 (a, a_str, sizeof(a_str), &len);
	FUNC4(context, errno, "listen %s/%d", a_str, FUNC6(port));
	FUNC9(d->s);
	d->s = rk_INVALID_SOCKET;
	return;
    }
}