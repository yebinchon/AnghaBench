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
struct tcp_ctx {scalar_t__ tc_magic; int /*<<< orphan*/  tc_fd; } ;
struct sockaddr_storage {int ss_family; scalar_t__ ss_len; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sa2 ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TCP_CTX_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ,struct sockaddr_storage*) ; 

__attribute__((used)) static bool
FUNC6(const void *ctx, const char *addr)
{
	const struct tcp_ctx *tctx = ctx;
	struct sockaddr_storage sa1, sa2;
	socklen_t salen;

	FUNC0(tctx != NULL);
	FUNC0(tctx->tc_magic == TCP_CTX_MAGIC);

	if (FUNC5(addr, FUNC1(FUNC4("tcp:port")), &sa1) != 0)
		return (false);

	salen = sizeof(sa2);
	if (FUNC2(tctx->tc_fd, (struct sockaddr *)&sa2, &salen) < 0)
		return (false);

	if (sa1.ss_family != sa2.ss_family)
		return (false);

#ifdef HAVE_SOCKADDR_STORAGE_SS_LEN
	if (sa1.ss_len != sa2.ss_len)
		return (false);
#endif

	switch (sa1.ss_family) {
	case AF_INET:
	    {
		struct sockaddr_in *sin1, *sin2;

		sin1 = (struct sockaddr_in *)&sa1;
		sin2 = (struct sockaddr_in *)&sa2;

		return (FUNC3(&sin1->sin_addr, &sin2->sin_addr,
		    sizeof(sin1->sin_addr)) == 0);
	    }
	case AF_INET6:
	    {
		struct sockaddr_in6 *sin1, *sin2;

		sin1 = (struct sockaddr_in6 *)&sa1;
		sin2 = (struct sockaddr_in6 *)&sa2;

		return (FUNC3(&sin1->sin6_addr, &sin2->sin6_addr,
		    sizeof(sin1->sin6_addr)) == 0);
	    }
	default:
		return (false);
	}
}