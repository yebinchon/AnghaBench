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

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  OCSP_F_OCSP_PARSE_URL ; 
 int /*<<< orphan*/  OCSP_R_ERROR_PARSING_URL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

int FUNC5(const char *url, char **phost, char **pport, char **ppath,
                   int *pssl)
{
    char *p, *buf;

    char *host, *port;

    *phost = NULL;
    *pport = NULL;
    *ppath = NULL;

    /* dup the buffer since we are going to mess with it */
    buf = FUNC2(url);
    if (!buf)
        goto mem_err;

    /* Check for initial colon */
    p = FUNC3(buf, ':');

    if (!p)
        goto parse_err;

    *(p++) = '\0';

    if (FUNC4(buf, "http") == 0) {
        *pssl = 0;
        port = "80";
    } else if (FUNC4(buf, "https") == 0) {
        *pssl = 1;
        port = "443";
    } else
        goto parse_err;

    /* Check for double slash */
    if ((p[0] != '/') || (p[1] != '/'))
        goto parse_err;

    p += 2;

    host = p;

    /* Check for trailing part of path */

    p = FUNC3(p, '/');

    if (!p)
        *ppath = FUNC2("/");
    else {
        *ppath = FUNC2(p);
        /* Set start of path to 0 so hostname is valid */
        *p = '\0';
    }

    if (!*ppath)
        goto mem_err;

    p = host;
    if (host[0] == '[') {
        /* ipv6 literal */
        host++;
        p = FUNC3(host, ']');
        if (!p)
            goto parse_err;
        *p = '\0';
        p++;
    }

    /* Look for optional ':' for port number */
    if ((p = FUNC3(p, ':'))) {
        *p = 0;
        port = p + 1;
    }

    *pport = FUNC2(port);
    if (!*pport)
        goto mem_err;

    *phost = FUNC2(host);

    if (!*phost)
        goto mem_err;

    FUNC1(buf);

    return 1;

 mem_err:
    FUNC0(OCSP_F_OCSP_PARSE_URL, ERR_R_MALLOC_FAILURE);
    goto err;

 parse_err:
    FUNC0(OCSP_F_OCSP_PARSE_URL, OCSP_R_ERROR_PARSING_URL);

 err:
    FUNC1(buf);
    FUNC1(*ppath);
    *ppath = NULL;
    FUNC1(*pport);
    *pport = NULL;
    FUNC1(*phost);
    *phost = NULL;
    return 0;

}