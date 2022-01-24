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
struct addrinfo {int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; } ;
typedef  int /*<<< orphan*/  config_tree ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  INITIAL_DNS_RETRY ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  gai_test_callback ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,struct addrinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC25 () ; 

__attribute__((used)) static void
FUNC26(
	config_tree *ptree,
	int/*BOOL*/ input_from_files
	)
{
	/* [Bug 3435] check and esure clock sanity if configured from
	 * file and clock sanity parameters (-> basedate) are given. Do
	 * this ASAP, so we don't disturb the closed loop controller.
	 */
	if (input_from_files) {
		if (FUNC18(ptree))
			FUNC1();
	}

	FUNC8(ptree, input_from_files);
	FUNC7(ptree);
	FUNC3(ptree);
	FUNC17(ptree);
	FUNC2(ptree);
	FUNC16(ptree);
	FUNC13(ptree);
	FUNC15(ptree);
	FUNC5(ptree);
	FUNC11(ptree);
	FUNC6(ptree);
	FUNC14(ptree);
	FUNC20(ptree);
	FUNC22(ptree);

	FUNC25();	/* [bug 2837] dep. on config_vars() */

	FUNC19(ptree);	/* [bug 2923] dep. on io_open_sockets() */
	FUNC9(ptree);
	FUNC10(ptree);
	FUNC21(ptree);
	FUNC4(ptree);
	FUNC12(ptree);

#ifdef DEBUG
	if (debug > 1) {
		dump_restricts();
	}
#endif

#ifdef TEST_BLOCKING_WORKER
	{
		struct addrinfo hints;

		ZERO(hints);
		hints.ai_socktype = SOCK_STREAM;
		hints.ai_protocol = IPPROTO_TCP;
		getaddrinfo_sometime("www.cnn.com", "ntp", &hints,
				     INITIAL_DNS_RETRY,
				     gai_test_callback, (void *)1);
		hints.ai_family = AF_INET6;
		getaddrinfo_sometime("ipv6.google.com", "ntp", &hints,
				     INITIAL_DNS_RETRY,
				     gai_test_callback, (void *)0x600);
	}
#endif
}