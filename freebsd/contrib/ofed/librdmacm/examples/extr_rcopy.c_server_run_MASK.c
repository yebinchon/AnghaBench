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
union rsocket_address {int /*<<< orphan*/  sa; } ;
typedef  int socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  SHUT_RDWR ; 
 char* FUNC0 (union rsocket_address*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(void)
{
	int lrs, rs;
	union rsocket_address rsa;
	socklen_t len;

	lrs = FUNC6();
	if (lrs < 0)
		return lrs;

	while (1) {
		len = sizeof rsa;
		FUNC2("waiting for connection...");
		FUNC1(NULL);
		rs = FUNC3(lrs, &rsa.sa, &len);

		FUNC2("client: %s\n", FUNC0(&rsa));
		FUNC7(rs);

		FUNC5(rs, SHUT_RDWR);
		FUNC4(rs);
	}
	return 0;
}