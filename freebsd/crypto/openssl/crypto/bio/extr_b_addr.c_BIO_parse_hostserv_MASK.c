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
typedef  enum BIO_hostserv_priorities { ____Placeholder_BIO_hostserv_priorities } BIO_hostserv_priorities ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_F_BIO_PARSE_HOSTSERV ; 
 int BIO_PARSE_PRIO_HOST ; 
 int /*<<< orphan*/  BIO_R_AMBIGUOUS_HOST_OR_SERVICE ; 
 int /*<<< orphan*/  BIO_R_MALFORMED_HOST_OR_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 char* FUNC1 (char const*,size_t) ; 
 char* FUNC2 (char const*,char) ; 
 size_t FUNC3 (char const*) ; 
 char* FUNC4 (char const*,char) ; 

int FUNC5(const char *hostserv, char **host, char **service,
                       enum BIO_hostserv_priorities hostserv_prio)
{
    const char *h = NULL; size_t hl = 0;
    const char *p = NULL; size_t pl = 0;

    if (*hostserv == '[') {
        if ((p = FUNC2(hostserv, ']')) == NULL)
            goto spec_err;
        h = hostserv + 1;
        hl = p - h;
        p++;
        if (*p == '\0')
            p = NULL;
        else if (*p != ':')
            goto spec_err;
        else {
            p++;
            pl = FUNC3(p);
        }
    } else {
        const char *p2 = FUNC4(hostserv, ':');
        p = FUNC2(hostserv, ':');

        /*-
         * Check for more than one colon.  There are three possible
         * interpretations:
         * 1. IPv6 address with port number, last colon being separator.
         * 2. IPv6 address only.
         * 3. IPv6 address only if hostserv_prio == BIO_PARSE_PRIO_HOST,
         *    IPv6 address and port number if hostserv_prio == BIO_PARSE_PRIO_SERV
         * Because of this ambiguity, we currently choose to make it an
         * error.
         */
        if (p != p2)
            goto amb_err;

        if (p != NULL) {
            h = hostserv;
            hl = p - h;
            p++;
            pl = FUNC3(p);
        } else if (hostserv_prio == BIO_PARSE_PRIO_HOST) {
            h = hostserv;
            hl = FUNC3(h);
        } else {
            p = hostserv;
            pl = FUNC3(p);
        }
    }

    if (p != NULL && FUNC2(p, ':'))
        goto spec_err;

    if (h != NULL && host != NULL) {
        if (hl == 0
            || (hl == 1 && h[0] == '*')) {
            *host = NULL;
        } else {
            *host = FUNC1(h, hl);
            if (*host == NULL)
                goto memerr;
        }
    }
    if (p != NULL && service != NULL) {
        if (pl == 0
            || (pl == 1 && p[0] == '*')) {
            *service = NULL;
        } else {
            *service = FUNC1(p, pl);
            if (*service == NULL)
                goto memerr;
        }
    }

    return 1;
 amb_err:
    FUNC0(BIO_F_BIO_PARSE_HOSTSERV, BIO_R_AMBIGUOUS_HOST_OR_SERVICE);
    return 0;
 spec_err:
    FUNC0(BIO_F_BIO_PARSE_HOSTSERV, BIO_R_MALFORMED_HOST_OR_SERVICE);
    return 0;
 memerr:
    FUNC0(BIO_F_BIO_PARSE_HOSTSERV, ERR_R_MALLOC_FAILURE);
    return 0;
}