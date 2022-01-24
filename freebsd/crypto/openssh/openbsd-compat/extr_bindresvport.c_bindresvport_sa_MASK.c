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
typedef  scalar_t__ u_int16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sockaddr {int sa_family; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  myaddr ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 scalar_t__ EADDRINUSE ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENDPORT ; 
 scalar_t__ EPFNOSUPPORT ; 
 int NPORTS ; 
 scalar_t__ STARTPORT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 int FUNC2 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

int
FUNC6(int sd, struct sockaddr *sa)
{
	int error, af;
	struct sockaddr_storage myaddr;
	struct sockaddr_in *in;
	struct sockaddr_in6 *in6;
	u_int16_t *portp;
	u_int16_t port;
	socklen_t salen;
	int i;

	if (sa == NULL) {
		FUNC4(&myaddr, 0, sizeof(myaddr));
		sa = (struct sockaddr *)&myaddr;
		salen = sizeof(myaddr);

		if (FUNC2(sd, sa, &salen) == -1)
			return -1;	/* errno is correctly set */

		af = sa->sa_family;
		FUNC4(&myaddr, 0, salen);
	} else
		af = sa->sa_family;

	if (af == AF_INET) {
		in = (struct sockaddr_in *)sa;
		salen = sizeof(struct sockaddr_in);
		portp = &in->sin_port;
	} else if (af == AF_INET6) {
		in6 = (struct sockaddr_in6 *)sa;
		salen = sizeof(struct sockaddr_in6);
		portp = &in6->sin6_port;
	} else {
		errno = EPFNOSUPPORT;
		return (-1);
	}
	sa->sa_family = af;

	port = FUNC5(*portp);
	if (port == 0)
		port = FUNC0(NPORTS) + STARTPORT;

	/* Avoid warning */
	error = -1;

	for(i = 0; i < NPORTS; i++) {
		*portp = FUNC3(port);
		
		error = FUNC1(sd, sa, salen);

		/* Terminate on success */
		if (error == 0)
			break;
			
		/* Terminate on errors, except "address already in use" */
		if ((error < 0) && !((errno == EADDRINUSE) || (errno == EINVAL)))
			break;
			
		port++;
		if (port > ENDPORT)
			port = STARTPORT;
	}

	return (error);
}