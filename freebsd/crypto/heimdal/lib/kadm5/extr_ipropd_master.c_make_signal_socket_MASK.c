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
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {int ai_addrlen; struct sockaddr* ai_addr; int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; } ;
typedef  scalar_t__ krb5_socket_t ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC0 (scalar_t__,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  rk_SOCK_ERRNO ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_socket_t
FUNC10 (krb5_context context)
{
#ifndef NO_UNIX_SOCKETS
    struct sockaddr_un addr;
    const char *fn;
    krb5_socket_t fd;

    fn = FUNC1(context);

    fd = FUNC7 (AF_UNIX, SOCK_DGRAM, 0);
    if (fd < 0)
	FUNC3 (context, 1, errno, "socket AF_UNIX");
    FUNC4 (&addr, 0, sizeof(addr));
    addr.sun_family = AF_UNIX;
    FUNC8 (addr.sun_path, fn, sizeof(addr.sun_path));
    FUNC9 (addr.sun_path);
    if (FUNC0 (fd, (struct sockaddr *)&addr, sizeof(addr)) < 0)
	FUNC3 (context, 1, errno, "bind %s", addr.sun_path);
    return fd;
#else
    struct addrinfo *ai = NULL;
    krb5_socket_t fd;

    kadm5_log_signal_socket_info(context, 1, &ai);

    fd = socket(ai->ai_family, ai->ai_socktype, ai->ai_protocol);
    if (rk_IS_BAD_SOCKET(fd))
	krb5_err (context, 1, rk_SOCK_ERRNO, "socket AF=%d", ai->ai_family);

    if (rk_IS_SOCKET_ERROR( bind (fd, ai->ai_addr, ai->ai_addrlen) ))
	krb5_err (context, 1, rk_SOCK_ERRNO, "bind");
    return fd;
#endif
}