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
typedef  int /*<<< orphan*/  rk_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (rk_socket_t s, rk_socket_t *ret_socket)
{
    rk_socket_t as;

    as = FUNC0(s, NULL, NULL);
    if(FUNC3(as))
	FUNC2 (1, "accept");

    if (ret_socket) {

	*ret_socket = as;

    } else {
	int fd = FUNC5(as, 0);

	/* We would use _O_RDONLY for the socket_to_fd() call for
	   STDIN, but there are instances where we assume that STDIN
	   is a r/w socket. */

	FUNC1(fd, STDIN_FILENO);
	FUNC1(fd, STDOUT_FILENO);

	FUNC4(as);
    }
}