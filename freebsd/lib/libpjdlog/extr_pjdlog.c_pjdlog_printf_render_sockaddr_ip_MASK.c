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
struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct printf_info {int dummy; } ;
struct __printf_io {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  INET_ADDRSTRLEN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct __printf_io*) ; 
 int FUNC3 (struct __printf_io*,struct printf_info const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(struct __printf_io *io,
    const struct printf_info *pi, const void * const *arg)
{
	const struct sockaddr_storage *ss;
	char addr[FUNC0(INET_ADDRSTRLEN, INET6_ADDRSTRLEN)];
	int ret;

	ss = *(const struct sockaddr_storage * const *)arg[0];
	switch (ss->ss_family) {
	case AF_INET:
	    {
		const struct sockaddr_in *sin;

		sin = (const struct sockaddr_in *)ss;
		if (FUNC4(ss->ss_family, &sin->sin_addr, addr,
		    sizeof(addr)) == NULL) {
			FUNC1("inet_ntop(AF_INET) failed: %s.",
			    FUNC6(errno));
		}
		break;
	    }
	case AF_INET6:
	    {
		const struct sockaddr_in6 *sin;

		sin = (const struct sockaddr_in6 *)ss;
		if (FUNC4(ss->ss_family, &sin->sin6_addr, addr,
		    sizeof(addr)) == NULL) {
			FUNC1("inet_ntop(AF_INET6) failed: %s.",
			    FUNC6(errno));
		}
		break;
	    }
	default:
		FUNC5(addr, sizeof(addr), "[unsupported family %hhu]",
		    ss->ss_family);
		break;
	}
	ret = FUNC3(io, pi, addr, FUNC7(addr));
	FUNC2(io);
	return (ret);
}