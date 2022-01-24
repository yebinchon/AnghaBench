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
struct TYPE_2__ {int /*<<< orphan*/  s6_addr; } ;
struct sockaddr_in6 {TYPE_1__ sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;

/* Variables and functions */
 int AF_INET ; 
 int EINVAL ; 
 int INET6_ADDRSTRLEN ; 
 int INET_ADDRSTRLEN ; 
 int errno ; 
 char* FUNC0 (int,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4(void *addrp,
    int family, char *buffer,
    int length, int *offset)
{
	struct sockaddr_in *addr;
	struct sockaddr_in6 *addr6;
	int addr_length;
	char tmp[50];
	const char *str;

	if (family == AF_INET) {
		addr = (struct sockaddr_in *)addrp;
		str = FUNC0(family, &addr->sin_addr, tmp, 50);
		addr_length = INET_ADDRSTRLEN;
	} else {
		addr6 = (struct sockaddr_in6 *)addrp;
		str = FUNC0(family, &addr6->sin6_addr.s6_addr, tmp, 50);
		addr_length = INET6_ADDRSTRLEN;
	}

	if ((length - *offset) < addr_length + 1) {
		return (EINVAL);
	}
	if (str == NULL) {
		FUNC2(buffer, "inet_ntop failed\n", length);
		return (errno);
	}
	if (*offset == 0) {
		FUNC2(buffer, tmp, length);
	} else{
		FUNC1(buffer, tmp, length);
	}
	FUNC1(buffer, ";", length);

	*offset += FUNC3(str) + 1;
	return (0);
}