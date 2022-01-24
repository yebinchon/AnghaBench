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
typedef  int /*<<< orphan*/  reqbuf ;
typedef  int /*<<< orphan*/  inbuf ;
typedef  int /*<<< orphan*/  OCSP_REQUEST ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_FLAGS_BASE64_NO_NL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int acfd ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC14 (char*,char*,int) ; 
 int FUNC15 (char*) ; 

__attribute__((used)) static int FUNC16(OCSP_REQUEST **preq, BIO **pcbio, BIO *acbio,
                        int timeout)
{
# ifdef OPENSSL_NO_SOCK
    return 0;
# else
    int len;
    OCSP_REQUEST *req = NULL;
    char inbuf[2048], reqbuf[2048];
    char *p, *q;
    BIO *cbio = NULL, *getbio = NULL, *b64 = NULL;
    const char *client;

    *preq = NULL;

    /* Connection loss before accept() is routine, ignore silently */
    if (FUNC0(acbio) <= 0)
        return 0;

    cbio = FUNC8(acbio);
    *pcbio = cbio;
    client = FUNC4(cbio);

#  ifdef OCSP_DAEMON
    if (timeout > 0) {
        (void) BIO_get_fd(cbio, &acfd);
        alarm(timeout);
    }
#  endif

    /* Read the request line. */
    len = FUNC5(cbio, reqbuf, sizeof(reqbuf));
    if (len <= 0)
        goto out;

    if (FUNC14(reqbuf, "GET ", 4) == 0) {
        /* Expecting GET {sp} /URL {sp} HTTP/1.x */
        for (p = reqbuf + 4; *p == ' '; ++p)
            continue;
        if (*p != '/') {
            FUNC13(LOG_INFO, "Invalid request -- bad URL: %s", client);
            goto out;
        }
        p++;

        /* Splice off the HTTP version identifier. */
        for (q = p; *q; q++)
            if (*q == ' ')
                break;
        if (FUNC14(q, " HTTP/1.", 8) != 0) {
            FUNC13(LOG_INFO,
                        "Invalid request -- bad HTTP version: %s", client);
            goto out;
        }
        *q = '\0';

        /*
         * Skip "GET / HTTP..." requests often used by load-balancers.  Note:
         * 'p' was incremented above to point to the first byte *after* the
         * leading slash, so with 'GET / ' it is now an empty string.
         */
        if (p[0] == '\0')
            goto out;

        len = FUNC15(p);
        if (len <= 0) {
            FUNC13(LOG_INFO,
                        "Invalid request -- bad URL encoding: %s", client);
            goto out;
        }
        if ((getbio = FUNC7(p, len)) == NULL
            || (b64 = FUNC6(FUNC1())) == NULL) {
            FUNC13(LOG_ERR, "Could not allocate base64 bio: %s", client);
            goto out;
        }
        FUNC10(b64, BIO_FLAGS_BASE64_NO_NL);
        getbio = FUNC9(b64, getbio);
    } else if (FUNC14(reqbuf, "POST ", 5) != 0) {
        FUNC13(LOG_INFO, "Invalid request -- bad HTTP verb: %s", client);
        goto out;
    }

    /* Read and skip past the headers. */
    for (;;) {
        len = FUNC5(cbio, inbuf, sizeof(inbuf));
        if (len <= 0)
            goto out;
        if ((inbuf[0] == '\r') || (inbuf[0] == '\n'))
            break;
    }

#  ifdef OCSP_DAEMON
    /* Clear alarm before we close the client socket */
    alarm(0);
    timeout = 0;
#  endif

    /* Try to read OCSP request */
    if (getbio != NULL) {
        req = FUNC12(getbio, NULL);
        FUNC2(getbio);
    } else {
        req = FUNC12(cbio, NULL);
    }

    if (req == NULL)
        FUNC13(LOG_ERR, "Error parsing OCSP request");

    *preq = req;

out:
#  ifdef OCSP_DAEMON
    if (timeout > 0)
        alarm(0);
    acfd = (int)INVALID_SOCKET;
#  endif
    return 1;
# endif
}