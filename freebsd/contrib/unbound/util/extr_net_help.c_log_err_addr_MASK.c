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
typedef  int /*<<< orphan*/  dest ;

/* Variables and functions */
 int AF_INET6 ; 
 scalar_t__ FUNC0 (int,void*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*,char*,int,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int verbosity ; 

void FUNC4(const char* str, const char* err,
	struct sockaddr_storage* addr, socklen_t addrlen)
{
	uint16_t port;
	char dest[100];
	int af = (int)((struct sockaddr_in*)addr)->sin_family;
	void* sinaddr = &((struct sockaddr_in*)addr)->sin_addr;
	if(af == AF_INET6)
		sinaddr = &((struct sockaddr_in6*)addr)->sin6_addr;
	if(FUNC0(af, sinaddr, dest, (socklen_t)sizeof(dest)) == 0) {
		(void)FUNC3(dest, "(inet_ntop error)", sizeof(dest));
	}
	dest[sizeof(dest)-1] = 0;
	port = FUNC2(((struct sockaddr_in*)addr)->sin_port);
	if(verbosity >= 4)
		FUNC1("%s: %s for %s port %d (len %d)", str, err, dest,
			(int)port, (int)addrlen);
	else	FUNC1("%s: %s for %s port %d", str, err, dest, (int)port);
}