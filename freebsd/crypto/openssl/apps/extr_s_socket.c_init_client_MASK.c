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
typedef  int /*<<< orphan*/  const BIO_ADDRINFO ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int AF_UNIX ; 
 int AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  BIO_LOOKUP_CLIENT ; 
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  BIO_SOCK_NODELAY ; 
 int /*<<< orphan*/  BIO_SOCK_REUSEADDR ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (char const*,char const*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/ * FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*,char const*,char*,char const*) ; 
 int FUNC13 () ; 
 int FUNC14 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int INVALID_SOCKET ; 
 int IPPROTO_SCTP ; 
 int IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  bio_err ; 

int FUNC18(int *sock, const char *host, const char *port,
                const char *bindhost, const char *bindport,
                int family, int type, int protocol)
{
    BIO_ADDRINFO *res = NULL;
    BIO_ADDRINFO *bindaddr = NULL;
    const BIO_ADDRINFO *ai = NULL;
    const BIO_ADDRINFO *bi = NULL;
    int found = 0;
    int ret;

    if (FUNC13() != 1)
        return 0;

    ret = FUNC10(host, port, BIO_LOOKUP_CLIENT, family, type, protocol,
                        &res);
    if (ret == 0) {
        FUNC16(bio_err);
        return 0;
    }

    if (bindhost != NULL || bindport != NULL) {
        ret = FUNC10(bindhost, bindport, BIO_LOOKUP_CLIENT,
                            family, type, protocol, &bindaddr);
        if (ret == 0) {
            FUNC16 (bio_err);
            goto out;
        }
    }

    ret = 0;
    for (ai = res; ai != NULL; ai = FUNC3(ai)) {
        /* Admittedly, these checks are quite paranoid, we should not get
         * anything in the BIO_ADDRINFO chain that we haven't
         * asked for. */
        FUNC17((family == AF_UNSPEC
                        || family == FUNC1(ai))
                       && (type == 0 || type == FUNC5(ai))
                       && (protocol == 0
                           || protocol == FUNC4(ai)));

        if (bindaddr != NULL) {
            for (bi = bindaddr; bi != NULL; bi = FUNC3(bi)) {
                if (FUNC1(bi) == FUNC1(ai))
                    break;
            }
            if (bi == NULL)
                continue;
            ++found;
        }

        *sock = FUNC14(FUNC1(ai), FUNC5(ai),
                           FUNC4(ai), 0);
        if (*sock == INVALID_SOCKET) {
            /* Maybe the kernel doesn't support the socket family, even if
             * BIO_lookup() added it in the returned result...
             */
            continue;
        }

        if (bi != NULL) {
            if (!FUNC6(*sock, FUNC0(bi),
                          BIO_SOCK_REUSEADDR)) {
                FUNC7(*sock);
                *sock = INVALID_SOCKET;
                break;
            }
        }

#ifndef OPENSSL_NO_SCTP
        if (protocol == IPPROTO_SCTP) {
            /*
             * For SCTP we have to set various options on the socket prior to
             * connecting. This is done automatically by BIO_new_dgram_sctp().
             * We don't actually need the created BIO though so we free it again
             * immediately.
             */
            BIO *tmpbio = FUNC11(*sock, BIO_NOCLOSE);

            if (tmpbio == NULL) {
                FUNC16(bio_err);
                return 0;
            }
            FUNC9(tmpbio);
        }
#endif

        if (!FUNC8(*sock, FUNC0(ai),
                         protocol == IPPROTO_TCP ? BIO_SOCK_NODELAY : 0)) {
            FUNC7(*sock);
            *sock = INVALID_SOCKET;
            continue;
        }

        /* Success, don't try any more addresses */
        break;
    }

    if (*sock == INVALID_SOCKET) {
        if (bindaddr != NULL && !found) {
            FUNC12(bio_err, "Can't bind %saddress for %s%s%s\n",
                       FUNC1(res) == AF_INET6 ? "IPv6 " :
                       FUNC1(res) == AF_INET ? "IPv4 " :
                       FUNC1(res) == AF_UNIX ? "unix " : "",
                       bindhost != NULL ? bindhost : "",
                       bindport != NULL ? ":" : "",
                       bindport != NULL ? bindport : "");
            FUNC15();
            ret = 0;
        }
        FUNC16(bio_err);
    } else {
        /* Remove any stale errors from previous connection attempts */
        FUNC15();
        ret = 1;
    }
out:
    if (bindaddr != NULL) {
        FUNC2 (bindaddr);
    }
    FUNC2(res);
    return ret;
}