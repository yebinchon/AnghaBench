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
struct socket_calls {int (* getsockname ) (int,int /*<<< orphan*/ *,int*) ;int (* socket ) (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* close ) (int) ;} ;
struct sockaddr_in6 {int dummy; } ;
typedef  int socklen_t ;
typedef  enum fd_type { ____Placeholder_fd_type } fd_type ;

/* Variables and functions */
 int PF_INET ; 
 int PF_INET6 ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int,int,struct socket_calls*,struct socket_calls*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  fd_ready ; 
 int fd_rsocket ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int /*<<< orphan*/ ) ; 
 struct socket_calls real ; 
 struct socket_calls rs ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(int socket, enum fd_type new_type)
{
	socklen_t len = 0;
	int sfd, dfd, param, ret;
	struct socket_calls *sapi, *dapi;

	sfd = FUNC1(socket);
	if (new_type == fd_rsocket) {
		dapi = &rs;
		sapi = &real;
	} else {
		dapi = &real;
		sapi = &rs;
	}

	ret = sapi->getsockname(sfd, NULL, &len);
	if (ret)
		return ret;

	param = (len == sizeof(struct sockaddr_in6)) ? PF_INET6 : PF_INET;
	dfd = dapi->socket(param, SOCK_STREAM, 0);
	if (dfd < 0)
		return dfd;

	ret = FUNC0(dfd, sfd, dapi, sapi);
	if (ret)
		goto err;

	FUNC2(socket, dfd, new_type, fd_ready);
	return dfd;

err:
	dapi->close(dfd);
	return ret;
}