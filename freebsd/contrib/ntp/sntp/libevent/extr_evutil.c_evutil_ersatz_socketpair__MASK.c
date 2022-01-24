#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {int sin_family; scalar_t__ sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  listen_addr ;
typedef  scalar_t__ evutil_socket_t ;
typedef  int ev_socklen_t ;
typedef  int /*<<< orphan*/  connect_addr ;

/* Variables and functions */
 int AF_INET ; 
 int AF_UNIX ; 
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 int /*<<< orphan*/  ECONNABORTED ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 scalar_t__ FUNC3 (scalar_t__,struct sockaddr*,int*) ; 
 int FUNC4 (scalar_t__,struct sockaddr*,int) ; 
 int FUNC5 (scalar_t__,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__,struct sockaddr*,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int,int,int /*<<< orphan*/ ) ; 

int
FUNC12(int family, int type, int protocol,
    evutil_socket_t fd[2])
{
	/* This code is originally from Tor.  Used with permission. */

	/* This socketpair does not work when localhost is down. So
	 * it's really not the same thing at all. But it's close enough
	 * for now, and really, when localhost is down sometimes, we
	 * have other problems too.
	 */
#ifdef _WIN32
#define ERR(e) WSA##e
#else
#define ERR(e) e
#endif
	evutil_socket_t listener = -1;
	evutil_socket_t connector = -1;
	evutil_socket_t acceptor = -1;
	struct sockaddr_in listen_addr;
	struct sockaddr_in connect_addr;
	ev_socklen_t size;
	int saved_errno = -1;

	if (protocol
		|| (family != AF_INET
#ifdef AF_UNIX
		    && family != AF_UNIX
#endif
		)) {
		FUNC1(ERR(EAFNOSUPPORT));
		return -1;
	}
	if (!fd) {
		FUNC1(ERR(EINVAL));
		return -1;
	}

	listener = FUNC11(AF_INET, type, 0);
	if (listener < 0)
		return -1;
	FUNC10(&listen_addr, 0, sizeof(listen_addr));
	listen_addr.sin_family = AF_INET;
	listen_addr.sin_addr.s_addr = FUNC8(INADDR_LOOPBACK);
	listen_addr.sin_port = 0;	/* kernel chooses port.	 */
	if (FUNC4(listener, (struct sockaddr *) &listen_addr, sizeof (listen_addr))
		== -1)
		goto tidy_up_and_fail;
	if (FUNC9(listener, 1) == -1)
		goto tidy_up_and_fail;

	connector = FUNC11(AF_INET, type, 0);
	if (connector < 0)
		goto tidy_up_and_fail;
	/* We want to find out the port number to connect to.  */
	size = sizeof(connect_addr);
	if (FUNC7(listener, (struct sockaddr *) &connect_addr, &size) == -1)
		goto tidy_up_and_fail;
	if (size != sizeof (connect_addr))
		goto abort_tidy_up_and_fail;
	if (FUNC5(connector, (struct sockaddr *) &connect_addr,
				sizeof(connect_addr)) == -1)
		goto tidy_up_and_fail;

	size = sizeof(listen_addr);
	acceptor = FUNC3(listener, (struct sockaddr *) &listen_addr, &size);
	if (acceptor < 0)
		goto tidy_up_and_fail;
	if (size != sizeof(listen_addr))
		goto abort_tidy_up_and_fail;
	/* Now check we are talking to ourself by matching port and host on the
	   two sockets.	 */
	if (FUNC7(connector, (struct sockaddr *) &connect_addr, &size) == -1)
		goto tidy_up_and_fail;
	if (size != sizeof (connect_addr)
		|| listen_addr.sin_family != connect_addr.sin_family
		|| listen_addr.sin_addr.s_addr != connect_addr.sin_addr.s_addr
		|| listen_addr.sin_port != connect_addr.sin_port)
		goto abort_tidy_up_and_fail;
	FUNC6(listener);
	fd[0] = connector;
	fd[1] = acceptor;

	return 0;

 abort_tidy_up_and_fail:
	saved_errno = ERR(ECONNABORTED);
 tidy_up_and_fail:
	if (saved_errno < 0)
		saved_errno = FUNC2();
	if (listener != -1)
		FUNC6(listener);
	if (connector != -1)
		FUNC6(connector);
	if (acceptor != -1)
		FUNC6(acceptor);

	FUNC1(saved_errno);
	return -1;
#undef ERR
}