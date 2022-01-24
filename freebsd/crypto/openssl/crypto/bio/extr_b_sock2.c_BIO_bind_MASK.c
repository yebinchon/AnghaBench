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
typedef  int /*<<< orphan*/  on ;
typedef  int /*<<< orphan*/  BIO_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  BIO_F_BIO_BIND ; 
 int /*<<< orphan*/  BIO_R_INVALID_SOCKET ; 
 int /*<<< orphan*/  BIO_R_UNABLE_TO_BIND_SOCKET ; 
 int /*<<< orphan*/  BIO_R_UNABLE_TO_REUSEADDR ; 
 int BIO_SOCK_REUSEADDR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  SYS_F_BIND ; 
 int /*<<< orphan*/  SYS_F_SETSOCKOPT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,int) ; 

int FUNC7(int sock, const BIO_ADDR *addr, int options)
{
# ifndef OPENSSL_SYS_WINDOWS
    int on = 1;
# endif

    if (sock == -1) {
        FUNC2(BIO_F_BIO_BIND, BIO_R_INVALID_SOCKET);
        return 0;
    }

# ifndef OPENSSL_SYS_WINDOWS
    /*
     * SO_REUSEADDR has different behavior on Windows than on
     * other operating systems, don't set it there.
     */
    if (options & BIO_SOCK_REUSEADDR) {
        if (FUNC6(sock, SOL_SOCKET, SO_REUSEADDR,
                       (const void *)&on, sizeof(on)) != 0) {
            FUNC3(SYS_F_SETSOCKOPT, FUNC5());
            FUNC2(BIO_F_BIO_BIND, BIO_R_UNABLE_TO_REUSEADDR);
            return 0;
        }
    }
# endif

    if (FUNC4(sock, FUNC0(addr), FUNC1(addr)) != 0) {
        FUNC3(SYS_F_BIND, FUNC5());
        FUNC2(BIO_F_BIO_BIND, BIO_R_UNABLE_TO_BIND_SOCKET);
        return 0;
    }

    return 1;
}