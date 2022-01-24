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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  heim_sipc ;

/* Variables and functions */
 int /*<<< orphan*/  AI_PASSIVE ; 
 int /*<<< orphan*/  HEIM_SIPC_TYPE_HTTP ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,struct addrinfo*,struct addrinfo**) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  test_service ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13(void)
{
    struct addrinfo hints, *res, *res0;
    int ret, s;
    heim_sipc u;

    FUNC8(&hints, 0, sizeof(hints));
    hints.ai_family = PF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_flags = AI_PASSIVE;
    ret = FUNC5(NULL, "8080", &hints, &res0);
    if (ret)
	FUNC2(1, "%s", FUNC4(ret));

    for (res = res0; res ; res = res->ai_next) {
	s = FUNC9(res->ai_family, res->ai_socktype, res->ai_protocol);
	if (s < 0) {
	    FUNC12("socket");
	    continue;
	}
	FUNC11(s, 1);
	FUNC10(s, 1);

	if (FUNC0(s, res->ai_addr, res->ai_addrlen) < 0) {
	    FUNC12("bind");
	    FUNC1(s);
	    continue;
	}
	FUNC7(s, 5);
	ret = FUNC6(s, HEIM_SIPC_TYPE_HTTP,
					test_service, NULL, &u);
	if (ret)
	    FUNC2(1, "heim_sipc_stream_listener: %d", ret);
    }
    FUNC3(res0);
}