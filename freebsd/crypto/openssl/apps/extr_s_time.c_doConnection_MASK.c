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
struct linger {int l_onoff; scalar_t__ l_linger; } ;
typedef  int /*<<< orphan*/  no_linger ;
struct TYPE_2__ {scalar_t__ error; } ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_SOCK_NODELAY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_LINGER ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ X509_V_OK ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__ verify_args ; 

__attribute__((used)) static SSL *FUNC14(SSL *scon, const char *host, SSL_CTX *ctx)
{
    BIO *conn;
    SSL *serverCon;
    int i;

    if ((conn = FUNC0(FUNC2())) == NULL)
        return NULL;

    FUNC3(conn, host);
    FUNC4(conn, BIO_SOCK_NODELAY);

    if (scon == NULL)
        serverCon = FUNC9(ctx);
    else {
        serverCon = scon;
        FUNC11(serverCon);
    }

    FUNC10(serverCon, conn, conn);

    /* ok, lets connect */
    i = FUNC6(serverCon);
    if (i <= 0) {
        FUNC1(bio_err, "ERROR\n");
        if (verify_args.error != X509_V_OK)
            FUNC1(bio_err, "verify error:%s\n",
                       FUNC12(verify_args.error));
        else
            FUNC5(bio_err);
        if (scon == NULL)
            FUNC7(serverCon);
        return NULL;
    }

#if defined(SOL_SOCKET) && defined(SO_LINGER)
    {
        struct linger no_linger;
        int fd;

        no_linger.l_onoff  = 1;
        no_linger.l_linger = 0;
        fd = SSL_get_fd(serverCon);
        if (fd >= 0)
            (void)setsockopt(fd, SOL_SOCKET, SO_LINGER, (char*)&no_linger,
                             sizeof(no_linger));
    }
#endif

    return serverCon;
}