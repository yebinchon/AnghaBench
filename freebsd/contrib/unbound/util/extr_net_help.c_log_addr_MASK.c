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
typedef  scalar_t__ uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; scalar_t__ sin_family; } ;
typedef  scalar_t__ socklen_t ;
typedef  enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;
typedef  int /*<<< orphan*/  dest ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_LOCAL 128 
 scalar_t__ FUNC0 (int,void*,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*,char const*,...) ; 
 int verbosity ; 

void
FUNC4(enum verbosity_value v, const char* str, 
	struct sockaddr_storage* addr, socklen_t addrlen)
{
	uint16_t port;
	const char* family = "unknown";
	char dest[100];
	int af = (int)((struct sockaddr_in*)addr)->sin_family;
	void* sinaddr = &((struct sockaddr_in*)addr)->sin_addr;
	if(verbosity < v)
		return;
	switch(af) {
		case AF_INET: family="ip4"; break;
		case AF_INET6: family="ip6";
			sinaddr = &((struct sockaddr_in6*)addr)->sin6_addr;
			break;
		case AF_LOCAL:
			dest[0]=0;
			(void)FUNC0(af, sinaddr, dest,
				(socklen_t)sizeof(dest));
			FUNC3(v, "%s local %s", str, dest);
			return; /* do not continue and try to get port */
		default: break;
	}
	if(FUNC0(af, sinaddr, dest, (socklen_t)sizeof(dest)) == 0) {
		(void)FUNC2(dest, "(inet_ntop error)", sizeof(dest));
	}
	dest[sizeof(dest)-1] = 0;
	port = FUNC1(((struct sockaddr_in*)addr)->sin_port);
	if(verbosity >= 4)
		FUNC3(v, "%s %s %s port %d (len %d)", str, family, dest, 
			(int)port, (int)addrlen);
	else	FUNC3(v, "%s %s port %d", str, dest, (int)port);
}