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
struct sockaddr_in {scalar_t__ sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  one ;
typedef  int /*<<< orphan*/  krb5_socket_t ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IPROP_PORT ; 
 char const* IPROP_SERVICE ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char const*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rk_SOCK_ERRNO ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC10 (char const*,char**,int) ; 

__attribute__((used)) static krb5_socket_t
FUNC11 (krb5_context context, const char *port_str)
{
    krb5_socket_t fd;
    int one = 1;
    struct sockaddr_in addr;

    fd = FUNC9 (AF_INET, SOCK_STREAM, 0);
    if (FUNC7(fd))
	FUNC2 (context, 1, rk_SOCK_ERRNO, "socket AF_INET");
    FUNC8 (fd, SOL_SOCKET, SO_REUSEADDR, (void *)&one, sizeof(one));
    FUNC6 (&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;

    if (port_str) {
	addr.sin_port = FUNC4 (context,
					      port_str, "tcp",
					      0);
	if (addr.sin_port == 0) {
	    char *ptr;
	    long port;

	    port = FUNC10 (port_str, &ptr, 10);
	    if (port == 0 && ptr == port_str)
		FUNC3 (context, 1, "bad port `%s'", port_str);
	    addr.sin_port = FUNC1(port);
	}
    } else {
	addr.sin_port = FUNC4 (context, IPROP_SERVICE,
					    "tcp", IPROP_PORT);
    }
    if(FUNC0(fd, (struct sockaddr *)&addr, sizeof(addr)) < 0)
	FUNC2 (context, 1, errno, "bind");
    if (FUNC5(fd, SOMAXCONN) < 0)
	FUNC2 (context, 1, errno, "listen");
    return fd;
}