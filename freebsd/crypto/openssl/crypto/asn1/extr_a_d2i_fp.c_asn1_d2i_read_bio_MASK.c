#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ BUF_MEM ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 size_t ASN1_CHUNK_INITIAL_SIZE ; 
 int /*<<< orphan*/  ASN1_F_ASN1_D2I_READ_BIO ; 
 unsigned long ASN1_R_HEADER_TOO_LONG ; 
 unsigned long ASN1_R_NOT_ENOUGH_DATA ; 
 unsigned long ASN1_R_TOO_LONG ; 
 int FUNC0 (unsigned char const**,long*,int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t) ; 
 TYPE_1__* FUNC5 () ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 size_t HEADER_SIZE ; 
 size_t INT_MAX ; 
 scalar_t__ UINT32_MAX ; 
 int V_ASN1_EOC ; 

int FUNC9(BIO *in, BUF_MEM **pb)
{
    BUF_MEM *b;
    unsigned char *p;
    int i;
    size_t want = HEADER_SIZE;
    uint32_t eos = 0;
    size_t off = 0;
    size_t len = 0;

    const unsigned char *q;
    long slen;
    int inf, tag, xclass;

    b = FUNC5();
    if (b == NULL) {
        FUNC1(ASN1_F_ASN1_D2I_READ_BIO, ERR_R_MALLOC_FAILURE);
        return -1;
    }

    FUNC7();
    for (;;) {
        if (want >= (len - off)) {
            want -= (len - off);

            if (len + want < len || !FUNC4(b, len + want)) {
                FUNC1(ASN1_F_ASN1_D2I_READ_BIO, ERR_R_MALLOC_FAILURE);
                goto err;
            }
            i = FUNC2(in, &(b->data[len]), want);
            if ((i < 0) && ((len - off) == 0)) {
                FUNC1(ASN1_F_ASN1_D2I_READ_BIO, ASN1_R_NOT_ENOUGH_DATA);
                goto err;
            }
            if (i > 0) {
                if (len + i < len) {
                    FUNC1(ASN1_F_ASN1_D2I_READ_BIO, ASN1_R_TOO_LONG);
                    goto err;
                }
                len += i;
            }
        }
        /* else data already loaded */

        p = (unsigned char *)&(b->data[off]);
        q = p;
        inf = FUNC0(&q, &slen, &tag, &xclass, len - off);
        if (inf & 0x80) {
            unsigned long e;

            e = FUNC6(FUNC8());
            if (e != ASN1_R_TOO_LONG)
                goto err;
            else
                FUNC7(); /* clear error */
        }
        i = q - p;            /* header length */
        off += i;               /* end of data */

        if (inf & 1) {
            /* no data body so go round again */
            if (eos == UINT32_MAX) {
                FUNC1(ASN1_F_ASN1_D2I_READ_BIO, ASN1_R_HEADER_TOO_LONG);
                goto err;
            }
            eos++;
            want = HEADER_SIZE;
        } else if (eos && (slen == 0) && (tag == V_ASN1_EOC)) {
            /* eos value, so go back and read another header */
            eos--;
            if (eos == 0)
                break;
            else
                want = HEADER_SIZE;
        } else {
            /* suck in slen bytes of data */
            want = slen;
            if (want > (len - off)) {
                size_t chunk_max = ASN1_CHUNK_INITIAL_SIZE;

                want -= (len - off);
                if (want > INT_MAX /* BIO_read takes an int length */  ||
                    len + want < len) {
                    FUNC1(ASN1_F_ASN1_D2I_READ_BIO, ASN1_R_TOO_LONG);
                    goto err;
                }
                while (want > 0) {
                    /*
                     * Read content in chunks of increasing size
                     * so we can return an error for EOF without
                     * having to allocate the entire content length
                     * in one go.
                     */
                    size_t chunk = want > chunk_max ? chunk_max : want;

                    if (!FUNC4(b, len + chunk)) {
                        FUNC1(ASN1_F_ASN1_D2I_READ_BIO, ERR_R_MALLOC_FAILURE);
                        goto err;
                    }
                    want -= chunk;
                    while (chunk > 0) {
                        i = FUNC2(in, &(b->data[len]), chunk);
                        if (i <= 0) {
                            FUNC1(ASN1_F_ASN1_D2I_READ_BIO,
                                    ASN1_R_NOT_ENOUGH_DATA);
                            goto err;
                        }
                    /*
                     * This can't overflow because |len+want| didn't
                     * overflow.
                     */
                        len += i;
                        chunk -= i;
                    }
                    if (chunk_max < INT_MAX/2)
                        chunk_max *= 2;
                }
            }
            if (off + slen < off) {
                FUNC1(ASN1_F_ASN1_D2I_READ_BIO, ASN1_R_TOO_LONG);
                goto err;
            }
            off += slen;
            if (eos == 0) {
                break;
            } else
                want = HEADER_SIZE;
        }
    }

    if (off > INT_MAX) {
        FUNC1(ASN1_F_ASN1_D2I_READ_BIO, ASN1_R_TOO_LONG);
        goto err;
    }

    *pb = b;
    return off;
 err:
    FUNC3(b);
    return -1;
}