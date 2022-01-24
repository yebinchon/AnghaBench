#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ type; int length; unsigned char const* data; } ;
struct TYPE_11__ {scalar_t__ type; int length; unsigned char const* data; } ;
struct TYPE_10__ {int length; unsigned char* data; } ;
typedef  int /*<<< orphan*/  BIO ;
typedef  TYPE_1__ ASN1_OCTET_STRING ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;
typedef  TYPE_2__ ASN1_INTEGER ;
typedef  TYPE_3__ ASN1_ENUMERATED ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int ASN1_PARSE_MAXDEPTH ; 
 int FUNC4 (unsigned char const**,long*,int*,int*,long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,long,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,unsigned char const,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const*,int) ; 
 int V_ASN1_BMPSTRING ; 
 int V_ASN1_BOOLEAN ; 
 int V_ASN1_CONSTRUCTED ; 
 int V_ASN1_ENUMERATED ; 
 int V_ASN1_EOC ; 
 int V_ASN1_GENERALIZEDTIME ; 
 int V_ASN1_IA5STRING ; 
 int V_ASN1_INTEGER ; 
 scalar_t__ V_ASN1_NEG_ENUMERATED ; 
 scalar_t__ V_ASN1_NEG_INTEGER ; 
 int V_ASN1_NUMERICSTRING ; 
 int V_ASN1_OBJECT ; 
 int V_ASN1_OCTET_STRING ; 
 int V_ASN1_PRINTABLESTRING ; 
 int V_ASN1_T61STRING ; 
 int V_ASN1_UTCTIME ; 
 int V_ASN1_UTF8STRING ; 
 int V_ASN1_VISIBLESTRING ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int,int) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ *,unsigned char const**,long) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *,unsigned char const**,long) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ **,unsigned char const**,long) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *,unsigned char const**,long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(BIO *bp, const unsigned char **pp, long length,
                       int offset, int depth, int indent, int dump)
{
    const unsigned char *p, *ep, *tot, *op, *opp;
    long len;
    int tag, xclass, ret = 0;
    int nl, hl, j, r;
    ASN1_OBJECT *o = NULL;
    ASN1_OCTET_STRING *os = NULL;
    /* ASN1_BMPSTRING *bmp=NULL; */
    int dump_indent, dump_cont = 0;

    if (depth > ASN1_PARSE_MAXDEPTH) {
        FUNC7(bp, "BAD RECURSION DEPTH\n");
        return 0;
    }

    dump_indent = 6;            /* Because we know BIO_dump_indent() */
    p = *pp;
    tot = p + length;
    while (length > 0) {
        op = p;
        j = FUNC4(&p, &len, &tag, &xclass, length);
        if (j & 0x80) {
            if (FUNC8(bp, "Error in encoding\n", 18) <= 0)
                goto end;
            ret = 0;
            goto end;
        }
        hl = (p - op);
        length -= hl;
        /*
         * if j == 0x21 it is a constructed indefinite length object
         */
        if (FUNC6(bp, "%5ld:", (long)offset + (long)(op - *pp))
            <= 0)
            goto end;

        if (j != (V_ASN1_CONSTRUCTED | 1)) {
            if (FUNC6(bp, "d=%-2d hl=%ld l=%4ld ",
                           depth, (long)hl, len) <= 0)
                goto end;
        } else {
            if (FUNC6(bp, "d=%-2d hl=%ld l=inf  ", depth, (long)hl) <= 0)
                goto end;
        }
        if (!FUNC9(bp, tag, xclass, j, (indent) ? depth : 0))
            goto end;
        if (j & V_ASN1_CONSTRUCTED) {
            const unsigned char *sp = p;

            ep = p + len;
            if (FUNC8(bp, "\n", 1) <= 0)
                goto end;
            if (len > length) {
                FUNC6(bp, "length is greater than %ld\n", length);
                ret = 0;
                goto end;
            }
            if ((j == 0x21) && (len == 0)) {
                for (;;) {
                    r = FUNC15(bp, &p, (long)(tot - p),
                                    offset + (p - *pp), depth + 1,
                                    indent, dump);
                    if (r == 0) {
                        ret = 0;
                        goto end;
                    }
                    if ((r == 2) || (p >= tot)) {
                        len = p - sp;
                        break;
                    }
                }
            } else {
                long tmp = len;

                while (p < ep) {
                    sp = p;
                    r = FUNC15(bp, &p, tmp,
                                    offset + (p - *pp), depth + 1,
                                    indent, dump);
                    if (r == 0) {
                        ret = 0;
                        goto end;
                    }
                    tmp -= p - sp;
                }
            }
        } else if (xclass != 0) {
            p += len;
            if (FUNC8(bp, "\n", 1) <= 0)
                goto end;
        } else {
            nl = 0;
            if ((tag == V_ASN1_PRINTABLESTRING) ||
                (tag == V_ASN1_T61STRING) ||
                (tag == V_ASN1_IA5STRING) ||
                (tag == V_ASN1_VISIBLESTRING) ||
                (tag == V_ASN1_NUMERICSTRING) ||
                (tag == V_ASN1_UTF8STRING) ||
                (tag == V_ASN1_UTCTIME) || (tag == V_ASN1_GENERALIZEDTIME)) {
                if (FUNC8(bp, ":", 1) <= 0)
                    goto end;
                if ((len > 0) && FUNC8(bp, (const char *)p, (int)len)
                    != (int)len)
                    goto end;
            } else if (tag == V_ASN1_OBJECT) {
                opp = op;
                if (FUNC12(&o, &opp, len + hl) != NULL) {
                    if (FUNC8(bp, ":", 1) <= 0)
                        goto end;
                    FUNC14(bp, o);
                } else {
                    if (FUNC7(bp, ":BAD OBJECT") <= 0)
                        goto end;
                    dump_cont = 1;
                }
            } else if (tag == V_ASN1_BOOLEAN) {
                if (len != 1) {
                    if (FUNC7(bp, ":BAD BOOLEAN") <= 0)
                        goto end;
                    dump_cont = 1;
                }
                if (len > 0)
                    FUNC6(bp, ":%u", p[0]);
            } else if (tag == V_ASN1_BMPSTRING) {
                /* do the BMP thang */
            } else if (tag == V_ASN1_OCTET_STRING) {
                int i, printable = 1;

                opp = op;
                os = FUNC13(NULL, &opp, len + hl);
                if (os != NULL && os->length > 0) {
                    opp = os->data;
                    /*
                     * testing whether the octet string is printable
                     */
                    for (i = 0; i < os->length; i++) {
                        if (((opp[i] < ' ') &&
                             (opp[i] != '\n') &&
                             (opp[i] != '\r') &&
                             (opp[i] != '\t')) || (opp[i] > '~')) {
                            printable = 0;
                            break;
                        }
                    }
                    if (printable)
                        /* printable string */
                    {
                        if (FUNC8(bp, ":", 1) <= 0)
                            goto end;
                        if (FUNC8(bp, (const char *)opp, os->length) <= 0)
                            goto end;
                    } else if (!dump)
                        /*
                         * not printable => print octet string as hex dump
                         */
                    {
                        if (FUNC8(bp, "[HEX DUMP]:", 11) <= 0)
                            goto end;
                        for (i = 0; i < os->length; i++) {
                            if (FUNC6(bp, "%02X", opp[i]) <= 0)
                                goto end;
                        }
                    } else
                        /* print the normal dump */
                    {
                        if (!nl) {
                            if (FUNC8(bp, "\n", 1) <= 0)
                                goto end;
                        }
                        if (FUNC5(bp,
                                            (const char *)opp,
                                            ((dump == -1 || dump >
                                              os->
                                              length) ? os->length : dump),
                                            dump_indent) <= 0)
                            goto end;
                        nl = 1;
                    }
                }
                FUNC3(os);
                os = NULL;
            } else if (tag == V_ASN1_INTEGER) {
                ASN1_INTEGER *bs;
                int i;

                opp = op;
                bs = FUNC11(NULL, &opp, len + hl);
                if (bs != NULL) {
                    if (FUNC8(bp, ":", 1) <= 0)
                        goto end;
                    if (bs->type == V_ASN1_NEG_INTEGER)
                        if (FUNC8(bp, "-", 1) <= 0)
                            goto end;
                    for (i = 0; i < bs->length; i++) {
                        if (FUNC6(bp, "%02X", bs->data[i]) <= 0)
                            goto end;
                    }
                    if (bs->length == 0) {
                        if (FUNC8(bp, "00", 2) <= 0)
                            goto end;
                    }
                } else {
                    if (FUNC7(bp, ":BAD INTEGER") <= 0)
                        goto end;
                    dump_cont = 1;
                }
                FUNC1(bs);
            } else if (tag == V_ASN1_ENUMERATED) {
                ASN1_ENUMERATED *bs;
                int i;

                opp = op;
                bs = FUNC10(NULL, &opp, len + hl);
                if (bs != NULL) {
                    if (FUNC8(bp, ":", 1) <= 0)
                        goto end;
                    if (bs->type == V_ASN1_NEG_ENUMERATED)
                        if (FUNC8(bp, "-", 1) <= 0)
                            goto end;
                    for (i = 0; i < bs->length; i++) {
                        if (FUNC6(bp, "%02X", bs->data[i]) <= 0)
                            goto end;
                    }
                    if (bs->length == 0) {
                        if (FUNC8(bp, "00", 2) <= 0)
                            goto end;
                    }
                } else {
                    if (FUNC7(bp, ":BAD ENUMERATED") <= 0)
                        goto end;
                    dump_cont = 1;
                }
                FUNC0(bs);
            } else if (len > 0 && dump) {
                if (!nl) {
                    if (FUNC8(bp, "\n", 1) <= 0)
                        goto end;
                }
                if (FUNC5(bp, (const char *)p,
                                    ((dump == -1 || dump > len) ? len : dump),
                                    dump_indent) <= 0)
                    goto end;
                nl = 1;
            }
            if (dump_cont) {
                int i;
                const unsigned char *tmp = op + hl;
                if (FUNC7(bp, ":[") <= 0)
                    goto end;
                for (i = 0; i < len; i++) {
                    if (FUNC6(bp, "%02X", tmp[i]) <= 0)
                        goto end;
                }
                if (FUNC7(bp, "]") <= 0)
                    goto end;
            }

            if (!nl) {
                if (FUNC8(bp, "\n", 1) <= 0)
                    goto end;
            }
            p += len;
            if ((tag == V_ASN1_EOC) && (xclass == 0)) {
                ret = 2;        /* End of sequence */
                goto end;
            }
        }
        length -= len;
    }
    ret = 1;
 end:
    FUNC2(o);
    FUNC3(os);
    *pp = p;
    return ret;
}