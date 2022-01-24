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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 scalar_t__ BIO_TYPE_SOCKET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_BUF_LIB ; 
 int /*<<< orphan*/  SSL_F_SSL_SET_WFD ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(SSL *s, int fd)
{
    BIO *rbio = FUNC6(s);

    if (rbio == NULL || FUNC1(rbio) != BIO_TYPE_SOCKET
        || (int)FUNC0(rbio, NULL) != fd) {
        BIO *bio = FUNC2(FUNC3());

        if (bio == NULL) {
            FUNC8(SSL_F_SSL_SET_WFD, ERR_R_BUF_LIB);
            return 0;
        }
        FUNC4(bio, fd, BIO_NOCLOSE);
        FUNC7(s, bio);
    } else {
        FUNC5(rbio);
        FUNC7(s, rbio);
    }
    return 1;
}