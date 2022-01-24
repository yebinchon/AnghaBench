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
typedef  int sa_family_t ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 scalar_t__ EADDRINUSE ; 
 scalar_t__ EPFNOSUPPORT ; 
 int IPPORT_RESERVED ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int FUNC1 (int,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_storage*,char,int) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(int *alport, sa_family_t af)
{
	struct sockaddr_storage ss;
	struct sockaddr *sa;
	u_int16_t *portp;
	int s;
	socklen_t salen;

	FUNC4(&ss, '\0', sizeof ss);
	sa = (struct sockaddr *)&ss;

	switch (af) {
	case AF_INET:
		salen = sizeof(struct sockaddr_in);
		portp = &((struct sockaddr_in *)sa)->sin_port;
		break;
	case AF_INET6:
		salen = sizeof(struct sockaddr_in6);
		portp = &((struct sockaddr_in6 *)sa)->sin6_port;
		break;
	default:
		errno = EPFNOSUPPORT;
		return (-1);
	}
	sa->sa_family = af;
	
	s = FUNC6(af, SOCK_STREAM, 0);
	if (s < 0)
		return (-1);

	*portp = FUNC3(*alport);
	if (*alport < IPPORT_RESERVED - 1) {
		if (FUNC0(s, sa, salen) >= 0)
			return (s);
		if (errno != EADDRINUSE) {
			(void)FUNC2(s);
			return (-1);
		}
	}

	*portp = 0;
	sa->sa_family = af;
	if (FUNC1(s, sa) == -1) {
		(void)FUNC2(s);
		return (-1);
	}
	*alport = FUNC5(*portp);
	return (s);
}