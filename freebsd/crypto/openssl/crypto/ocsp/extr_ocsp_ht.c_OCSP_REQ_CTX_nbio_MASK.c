#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int state; unsigned char const* iobuf; int iobuflen; int asn1_len; int max_resp_len; int /*<<< orphan*/  mem; int /*<<< orphan*/  io; } ;
typedef  TYPE_1__ OCSP_REQ_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,unsigned char const**) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,...) ; 
#define  OHS_ASN1_CONTENT 137 
#define  OHS_ASN1_FLUSH 136 
#define  OHS_ASN1_HEADER 135 
#define  OHS_ASN1_WRITE 134 
#define  OHS_ASN1_WRITE_INIT 133 
#define  OHS_DONE 132 
#define  OHS_ERROR 131 
#define  OHS_FIRSTLINE 130 
#define  OHS_HEADERS 129 
#define  OHS_HTTP_HEADER 128 
 int OHS_NOREAD ; 
 int V_ASN1_CONSTRUCTED ; 
 int V_ASN1_SEQUENCE ; 
 int /*<<< orphan*/  FUNC7 (unsigned char const*,char,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(OCSP_REQ_CTX *rctx)
{
    int i, n;
    const unsigned char *p;
 next_io:
    if (!(rctx->state & OHS_NOREAD)) {
        n = FUNC3(rctx->io, rctx->iobuf, rctx->iobuflen);

        if (n <= 0) {
            if (FUNC5(rctx->io))
                return -1;
            return 0;
        }

        /* Write data to memory BIO */

        if (FUNC6(rctx->mem, rctx->iobuf, n) != n)
            return 0;
    }

    switch (rctx->state) {
    case OHS_HTTP_HEADER:
        /* Last operation was adding headers: need a final \r\n */
        if (FUNC6(rctx->mem, "\r\n", 2) != 2) {
            rctx->state = OHS_ERROR;
            return 0;
        }
        rctx->state = OHS_ASN1_WRITE_INIT;

        /* fall thru */
    case OHS_ASN1_WRITE_INIT:
        rctx->asn1_len = FUNC1(rctx->mem, NULL);
        rctx->state = OHS_ASN1_WRITE;

        /* fall thru */
    case OHS_ASN1_WRITE:
        n = FUNC1(rctx->mem, &p);

        i = FUNC6(rctx->io, p + (n - rctx->asn1_len), rctx->asn1_len);

        if (i <= 0) {
            if (FUNC5(rctx->io))
                return -1;
            rctx->state = OHS_ERROR;
            return 0;
        }

        rctx->asn1_len -= i;

        if (rctx->asn1_len > 0)
            goto next_io;

        rctx->state = OHS_ASN1_FLUSH;

        (void)FUNC4(rctx->mem);

        /* fall thru */
    case OHS_ASN1_FLUSH:

        i = FUNC0(rctx->io);

        if (i > 0) {
            rctx->state = OHS_FIRSTLINE;
            goto next_io;
        }

        if (FUNC5(rctx->io))
            return -1;

        rctx->state = OHS_ERROR;
        return 0;

    case OHS_ERROR:
        return 0;

    case OHS_FIRSTLINE:
    case OHS_HEADERS:

        /* Attempt to read a line in */

 next_line:
        /*
         * Due to &%^*$" memory BIO behaviour with BIO_gets we have to check
         * there's a complete line in there before calling BIO_gets or we'll
         * just get a partial read.
         */
        n = FUNC1(rctx->mem, &p);
        if ((n <= 0) || !FUNC7(p, '\n', n)) {
            if (n >= rctx->iobuflen) {
                rctx->state = OHS_ERROR;
                return 0;
            }
            goto next_io;
        }
        n = FUNC2(rctx->mem, (char *)rctx->iobuf, rctx->iobuflen);

        if (n <= 0) {
            if (FUNC5(rctx->mem))
                goto next_io;
            rctx->state = OHS_ERROR;
            return 0;
        }

        /* Don't allow excessive lines */
        if (n == rctx->iobuflen) {
            rctx->state = OHS_ERROR;
            return 0;
        }

        /* First line */
        if (rctx->state == OHS_FIRSTLINE) {
            if (FUNC8((char *)rctx->iobuf)) {
                rctx->state = OHS_HEADERS;
                goto next_line;
            } else {
                rctx->state = OHS_ERROR;
                return 0;
            }
        } else {
            /* Look for blank line: end of headers */
            for (p = rctx->iobuf; *p; p++) {
                if ((*p != '\r') && (*p != '\n'))
                    break;
            }
            if (*p)
                goto next_line;

            rctx->state = OHS_ASN1_HEADER;

        }

        /* Fall thru */

    case OHS_ASN1_HEADER:
        /*
         * Now reading ASN1 header: can read at least 2 bytes which is enough
         * for ASN1 SEQUENCE header and either length field or at least the
         * length of the length field.
         */
        n = FUNC1(rctx->mem, &p);
        if (n < 2)
            goto next_io;

        /* Check it is an ASN1 SEQUENCE */
        if (*p++ != (V_ASN1_SEQUENCE | V_ASN1_CONSTRUCTED)) {
            rctx->state = OHS_ERROR;
            return 0;
        }

        /* Check out length field */
        if (*p & 0x80) {
            /*
             * If MSB set on initial length octet we can now always read 6
             * octets: make sure we have them.
             */
            if (n < 6)
                goto next_io;
            n = *p & 0x7F;
            /* Not NDEF or excessive length */
            if (!n || (n > 4)) {
                rctx->state = OHS_ERROR;
                return 0;
            }
            p++;
            rctx->asn1_len = 0;
            for (i = 0; i < n; i++) {
                rctx->asn1_len <<= 8;
                rctx->asn1_len |= *p++;
            }

            if (rctx->asn1_len > rctx->max_resp_len) {
                rctx->state = OHS_ERROR;
                return 0;
            }

            rctx->asn1_len += n + 2;
        } else
            rctx->asn1_len = *p + 2;

        rctx->state = OHS_ASN1_CONTENT;

        /* Fall thru */

    case OHS_ASN1_CONTENT:
        n = FUNC1(rctx->mem, NULL);
        if (n < (int)rctx->asn1_len)
            goto next_io;

        rctx->state = OHS_DONE;
        return 1;

    case OHS_DONE:
        return 1;

    }

    return 0;

}