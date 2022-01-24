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
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  BIO_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BIO_F_BIO_ACCEPT_EX ; 
 int /*<<< orphan*/  BIO_R_ACCEPT_ERROR ; 
 int BIO_SOCK_NONBLOCK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int INVALID_SOCKET ; 
 int /*<<< orphan*/  SYS_F_ACCEPT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(int accept_sock, BIO_ADDR *addr_, int options)
{
    socklen_t len;
    int accepted_sock;
    BIO_ADDR locaddr;
    BIO_ADDR *addr = addr_ == NULL ? &locaddr : addr_;

    len = sizeof(*addr);
    accepted_sock = FUNC5(accept_sock,
                           FUNC0(addr), &len);
    if (accepted_sock == -1) {
        if (!FUNC1(accepted_sock)) {
            FUNC4(SYS_F_ACCEPT, FUNC7());
            FUNC3(BIO_F_BIO_ACCEPT_EX, BIO_R_ACCEPT_ERROR);
        }
        return INVALID_SOCKET;
    }

    if (!FUNC2(accepted_sock, (options & BIO_SOCK_NONBLOCK) != 0)) {
        FUNC6(accepted_sock);
        return INVALID_SOCKET;
    }

    return accepted_sock;
}