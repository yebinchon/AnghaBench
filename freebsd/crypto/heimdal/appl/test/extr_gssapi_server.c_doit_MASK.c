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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  one ;
typedef  int /*<<< orphan*/  my_addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,char const*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9 (int port, const char *service)
{
    int sock, sock2;
    struct sockaddr_in my_addr;
    int one = 1;
    int ret;

    sock = FUNC7 (AF_INET, SOCK_STREAM, 0);
    if (sock < 0)
	FUNC2 (1, "socket");

    FUNC4 (&my_addr, 0, sizeof(my_addr));
    my_addr.sin_family      = AF_INET;
    my_addr.sin_port        = port;
    my_addr.sin_addr.s_addr = INADDR_ANY;

    if (FUNC6 (sock, SOL_SOCKET, SO_REUSEADDR,
		    (void *)&one, sizeof(one)) < 0)
	FUNC8 ("setsockopt SO_REUSEADDR");

    if (FUNC1 (sock, (struct sockaddr *)&my_addr, sizeof(my_addr)) < 0)
	FUNC2 (1, "bind");

    while (1) {
        if (FUNC3 (sock, 1) < 0)
	    FUNC2 (1, "listen");

        sock2 = FUNC0 (sock, NULL, NULL);
        if (sock2 < 0)
	    FUNC2 (1, "accept");

        ret = FUNC5 (sock2, service);
    }
    return ret;
}