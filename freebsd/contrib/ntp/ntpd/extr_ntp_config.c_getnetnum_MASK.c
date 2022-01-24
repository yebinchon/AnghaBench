#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  sa_len; } ;
struct TYPE_10__ {TYPE_1__ sa; } ;
typedef  TYPE_2__ sockaddr_u ;
typedef  enum gnn_type { ____Placeholder_gnn_type } gnn_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  NTP_PORT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  ipv6_works ; 
 int /*<<< orphan*/  FUNC6 (char const*,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC8(
	const char *num,
	sockaddr_u *addr,
	int complain,
	enum gnn_type a_type	/* ignored */
	)
{
	FUNC3(AF_UNSPEC == FUNC0(addr) ||
		AF_INET == FUNC0(addr) ||
		AF_INET6 == FUNC0(addr));

	if (!FUNC6(num, FUNC0(addr), addr))
		return 0;

	if (FUNC2(addr) && !ipv6_works)
		return -1;

# ifdef ISC_PLATFORM_HAVESALEN
	addr->sa.sa_len = SIZEOF_SOCKADDR(AF(addr));
# endif
	FUNC4(addr, NTP_PORT);

	FUNC1(2, ("getnetnum given %s, got %s\n", num, FUNC7(addr)));

	return 1;
}