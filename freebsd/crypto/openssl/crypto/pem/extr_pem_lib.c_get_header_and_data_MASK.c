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
typedef  enum header_status { ____Placeholder_header_status } header_status ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int ENDLEN ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int IN_HEADER ; 
 scalar_t__ LINESIZE ; 
 int MAYBE_HEADER ; 
 unsigned int PEM_FLAG_ONLY_B64 ; 
 int /*<<< orphan*/  PEM_F_GET_HEADER_AND_DATA ; 
 int /*<<< orphan*/  PEM_R_BAD_END_LINE ; 
 int /*<<< orphan*/  PEM_R_SHORT_HEADER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int POST_HEADER ; 
 size_t TAILLEN ; 
 char* endstr ; 
 int /*<<< orphan*/ * FUNC3 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,scalar_t__) ; 
 char* FUNC5 (scalar_t__,unsigned int) ; 
 int FUNC6 (char*,int,unsigned int) ; 
 size_t FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*,size_t) ; 
 char* tailstr ; 

__attribute__((used)) static int FUNC9(BIO *bp, BIO **header, BIO **data, char *name,
                               unsigned int flags)
{
    BIO *tmp = *header;
    char *linebuf, *p;
    int len, line, ret = 0, end = 0;
    /* 0 if not seen (yet), 1 if reading header, 2 if finished header */
    enum header_status got_header = MAYBE_HEADER;
    unsigned int flags_mask;
    size_t namelen;

    /* Need to hold trailing NUL (accounted for by BIO_gets() and the newline
     * that will be added by sanitize_line() (the extra '1'). */
    linebuf = FUNC5(LINESIZE + 1, flags);
    if (linebuf == NULL) {
        FUNC2(PEM_F_GET_HEADER_AND_DATA, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    for (line = 0; ; line++) {
        flags_mask = ~0u;
        len = FUNC0(bp, linebuf, LINESIZE);
        if (len <= 0) {
            FUNC2(PEM_F_GET_HEADER_AND_DATA, PEM_R_SHORT_HEADER);
            goto err;
        }

        if (got_header == MAYBE_HEADER) {
            if (FUNC3(linebuf, ':', len) != NULL)
                got_header = IN_HEADER;
        }
        if (!FUNC8(linebuf, endstr, ENDLEN) || got_header == IN_HEADER)
            flags_mask &= ~PEM_FLAG_ONLY_B64;
        len = FUNC6(linebuf, len, flags & flags_mask);

        /* Check for end of header. */
        if (linebuf[0] == '\n') {
            if (got_header == POST_HEADER) {
                /* Another blank line is an error. */
                FUNC2(PEM_F_GET_HEADER_AND_DATA, PEM_R_BAD_END_LINE);
                goto err;
            }
            got_header = POST_HEADER;
            tmp = *data;
            continue;
        }

        /* Check for end of stream (which means there is no header). */
        if (FUNC8(linebuf, endstr, ENDLEN) == 0) {
            p = linebuf + ENDLEN;
            namelen = FUNC7(name);
            if (FUNC8(p, name, namelen) != 0 ||
                FUNC8(p + namelen, tailstr, TAILLEN) != 0) {
                FUNC2(PEM_F_GET_HEADER_AND_DATA, PEM_R_BAD_END_LINE);
                goto err;
            }
            if (got_header == MAYBE_HEADER) {
                *header = *data;
                *data = tmp;
            }
            break;
        } else if (end) {
            /* Malformed input; short line not at end of data. */
            FUNC2(PEM_F_GET_HEADER_AND_DATA, PEM_R_BAD_END_LINE);
            goto err;
        }
        /*
         * Else, a line of text -- could be header or data; we don't
         * know yet.  Just pass it through.
         */
        if (FUNC1(tmp, linebuf) < 0)
            goto err;
        /*
         * Only encrypted files need the line length check applied.
         */
        if (got_header == POST_HEADER) {
            /* 65 includes the trailing newline */
            if (len > 65)
                goto err;
            if (len < 65)
                end = 1;
        }
    }

    ret = 1;
err:
    FUNC4(linebuf, flags, LINESIZE + 1);
    return ret;
}