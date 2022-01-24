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
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {int /*<<< orphan*/  h_addr; } ;
typedef  int /*<<< orphan*/  router ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  RIP_PORT ; 
 struct hostent* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  omsg_buf ; 
 int /*<<< orphan*/  omsg_len ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  sent ; 
 int /*<<< orphan*/  soc ; 

__attribute__((used)) static int
FUNC9(const char *host)
{
	struct sockaddr_in router;
	struct hostent *hp;

	if (FUNC1(&sent, 0) < 0) {
		FUNC7("gettimeofday(sent)");
		return -1;
	}

	FUNC6(&router, 0, sizeof(router));
	router.sin_family = AF_INET;
#ifdef _HAVE_SIN_LEN
	router.sin_len = sizeof(router);
#endif
	if (!FUNC4(host, &router.sin_addr)) {
		hp = FUNC0(host);
		if (hp == NULL) {
			FUNC2(host);
			return -1;
		}
		FUNC5(&router.sin_addr, hp->h_addr, sizeof(router.sin_addr));
	}
	router.sin_port = FUNC3(RIP_PORT);

	if (FUNC8(soc, &omsg_buf, omsg_len, 0,
		   (struct sockaddr *)&router, sizeof(router)) < 0) {
		FUNC7(host);
		return -1;
	}

	return 0;
}