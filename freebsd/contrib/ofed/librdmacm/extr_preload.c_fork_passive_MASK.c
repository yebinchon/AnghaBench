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
typedef  scalar_t__ uint32_t ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_family; int /*<<< orphan*/  sin6_addr; scalar_t__ sin6_scope_id; scalar_t__ sin6_flowinfo; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sem_t ;
struct TYPE_3__ {int (* getsockname ) (int,struct sockaddr*,int*) ;int (* write ) (int,scalar_t__*,int) ;int /*<<< orphan*/  (* close ) (int) ;int /*<<< orphan*/  (* shutdown ) (int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/ * SEM_FAILED ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int S_IRWXG ; 
 int S_IRWXU ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  fd_normal ; 
 int /*<<< orphan*/  fd_ready ; 
 int /*<<< orphan*/  fd_rsocket ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_1__ real ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  rs ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (int,struct sockaddr*,int*) ; 
 int FUNC16 (int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

__attribute__((used)) static void FUNC19(int socket)
{
	struct sockaddr_in6 sin6;
	sem_t *sem;
	int lfd, sfd, dfd, ret, param;
	socklen_t len;
	uint32_t msg;

	sfd = FUNC1(socket);

	len = sizeof sin6;
	ret = real.getsockname(sfd, (struct sockaddr *) &sin6, &len);
	if (ret)
		goto out;
	sin6.sin6_flowinfo = 0;
	sin6.sin6_scope_id = 0;
	FUNC3(&sin6.sin6_addr, 0, sizeof sin6.sin6_addr);

	sem = FUNC11("/rsocket_fork", O_CREAT | O_RDWR,
		       S_IRWXU | S_IRWXG, 1);
	if (sem == SEM_FAILED) {
		ret = -1;
		goto out;
	}

	lfd = FUNC9(sin6.sin6_family, SOCK_STREAM, 0);
	if (lfd < 0) {
		ret = lfd;
		goto sclose;
	}

	param = 1;
	FUNC8(lfd, SOL_SOCKET, SO_REUSEADDR, &param, sizeof param);

	FUNC13(sem);
	ret = FUNC5(lfd, (struct sockaddr *) &sin6, sizeof sin6);
	if (ret)
		goto lclose;

	ret = FUNC7(lfd, 1);
	if (ret)
		goto lclose;

	msg = 0;
	len = real.write(sfd, &msg, sizeof msg);
	if (len != sizeof msg)
		goto lclose;

	dfd = FUNC4(lfd, NULL, NULL);
	if (dfd < 0) {
		ret  = dfd;
		goto lclose;
	}

	FUNC14(dfd);
	FUNC0(dfd, sfd, &rs, &real);
	real.shutdown(sfd, SHUT_RDWR);
	real.close(sfd);
	FUNC2(socket, dfd, fd_rsocket, fd_ready);

lclose:
	FUNC6(lfd);
	FUNC12(sem);
sclose:
	FUNC10(sem);
out:
	if (ret)
		FUNC2(socket, sfd, fd_normal, fd_ready);
}