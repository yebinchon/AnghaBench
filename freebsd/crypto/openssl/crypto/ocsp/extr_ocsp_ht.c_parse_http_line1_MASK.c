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
 int /*<<< orphan*/  FUNC0 (int,char*,char*,...) ; 
 int /*<<< orphan*/  OCSP_F_PARSE_HTTP_LINE1 ; 
 int /*<<< orphan*/  OCSP_R_SERVER_RESPONSE_ERROR ; 
 int /*<<< orphan*/  OCSP_R_SERVER_RESPONSE_PARSE_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*,char**,int) ; 

__attribute__((used)) static int FUNC5(char *line)
{
    int retcode;
    char *p, *q, *r;
    /* Skip to first white space (passed protocol info) */

    for (p = line; *p && !FUNC2(*p); p++)
        continue;
    if (!*p) {
        FUNC1(OCSP_F_PARSE_HTTP_LINE1, OCSP_R_SERVER_RESPONSE_PARSE_ERROR);
        return 0;
    }

    /* Skip past white space to start of response code */
    while (*p && FUNC2(*p))
        p++;

    if (!*p) {
        FUNC1(OCSP_F_PARSE_HTTP_LINE1, OCSP_R_SERVER_RESPONSE_PARSE_ERROR);
        return 0;
    }

    /* Find end of response code: first whitespace after start of code */
    for (q = p; *q && !FUNC2(*q); q++)
        continue;

    if (!*q) {
        FUNC1(OCSP_F_PARSE_HTTP_LINE1, OCSP_R_SERVER_RESPONSE_PARSE_ERROR);
        return 0;
    }

    /* Set end of response code and start of message */
    *q++ = 0;

    /* Attempt to parse numeric code */
    retcode = FUNC4(p, &r, 10);

    if (*r)
        return 0;

    /* Skip over any leading white space in message */
    while (*q && FUNC2(*q))
        q++;

    if (*q) {
        /*
         * Finally zap any trailing white space in message (include CRLF)
         */

        /* We know q has a non white space character so this is OK */
        for (r = q + FUNC3(q) - 1; FUNC2(*r); r--)
            *r = 0;
    }
    if (retcode != 200) {
        FUNC1(OCSP_F_PARSE_HTTP_LINE1, OCSP_R_SERVER_RESPONSE_ERROR);
        if (!*q)
            FUNC0(2, "Code=", p);
        else
            FUNC0(4, "Code=", p, ",Reason=", q);
        return 0;
    }

    return 1;

}