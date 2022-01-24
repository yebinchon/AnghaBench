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
typedef  int /*<<< orphan*/  strbuf ;
struct TYPE_6__ {unsigned char* data; int length; int type; } ;
typedef  TYPE_1__ ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_ASN1_MBSTRING_NCOPY ; 
 int /*<<< orphan*/  ASN1_R_ILLEGAL_CHARACTERS ; 
 int /*<<< orphan*/  ASN1_R_INVALID_BMPSTRING_LENGTH ; 
 int /*<<< orphan*/  ASN1_R_INVALID_UNIVERSALSTRING_LENGTH ; 
 int /*<<< orphan*/  ASN1_R_INVALID_UTF8STRING ; 
 int /*<<< orphan*/  ASN1_R_STRING_TOO_LONG ; 
 int /*<<< orphan*/  ASN1_R_STRING_TOO_SHORT ; 
 int /*<<< orphan*/  ASN1_R_UNKNOWN_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char const*,int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,long) ; 
 unsigned long B_ASN1_BMPSTRING ; 
 unsigned long B_ASN1_IA5STRING ; 
 unsigned long B_ASN1_NUMERICSTRING ; 
 unsigned long B_ASN1_PRINTABLESTRING ; 
 unsigned long B_ASN1_T61STRING ; 
 unsigned long B_ASN1_UNIVERSALSTRING ; 
 unsigned long DIRSTRING_TYPE ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
#define  MBSTRING_ASC 131 
#define  MBSTRING_BMP 130 
#define  MBSTRING_UNIV 129 
#define  MBSTRING_UTF8 128 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 unsigned char* FUNC7 (int) ; 
 int V_ASN1_BMPSTRING ; 
 int V_ASN1_IA5STRING ; 
 int V_ASN1_NUMERICSTRING ; 
 int V_ASN1_PRINTABLESTRING ; 
 int V_ASN1_T61STRING ; 
 int V_ASN1_UNIVERSALSTRING ; 
 int V_ASN1_UTF8STRING ; 
 int FUNC8 (unsigned long,void*) ; 
 int FUNC9 (unsigned long,void*) ; 
 int FUNC10 (unsigned long,void*) ; 
 int FUNC11 (unsigned long,void*) ; 
 int /*<<< orphan*/  in_utf8 ; 
 int /*<<< orphan*/  out_utf8 ; 
 int FUNC12 (char const*) ; 
 int FUNC13 (unsigned char const*,int,int const,int (*) (unsigned long,void*),...) ; 
 int /*<<< orphan*/  type_str ; 

int FUNC14(ASN1_STRING **out, const unsigned char *in, int len,
                        int inform, unsigned long mask,
                        long minsize, long maxsize)
{
    int str_type;
    int ret;
    char free_out;
    int outform, outlen = 0;
    ASN1_STRING *dest;
    unsigned char *p;
    int nchar;
    char strbuf[32];
    int (*cpyfunc) (unsigned long, void *) = NULL;
    if (len == -1)
        len = FUNC12((const char *)in);
    if (!mask)
        mask = DIRSTRING_TYPE;

    /* First do a string check and work out the number of characters */
    switch (inform) {

    case MBSTRING_BMP:
        if (len & 1) {
            FUNC3(ASN1_F_ASN1_MBSTRING_NCOPY,
                    ASN1_R_INVALID_BMPSTRING_LENGTH);
            return -1;
        }
        nchar = len >> 1;
        break;

    case MBSTRING_UNIV:
        if (len & 3) {
            FUNC3(ASN1_F_ASN1_MBSTRING_NCOPY,
                    ASN1_R_INVALID_UNIVERSALSTRING_LENGTH);
            return -1;
        }
        nchar = len >> 2;
        break;

    case MBSTRING_UTF8:
        nchar = 0;
        /* This counts the characters and does utf8 syntax checking */
        ret = FUNC13(in, len, MBSTRING_UTF8, in_utf8, &nchar);
        if (ret < 0) {
            FUNC3(ASN1_F_ASN1_MBSTRING_NCOPY, ASN1_R_INVALID_UTF8STRING);
            return -1;
        }
        break;

    case MBSTRING_ASC:
        nchar = len;
        break;

    default:
        FUNC3(ASN1_F_ASN1_MBSTRING_NCOPY, ASN1_R_UNKNOWN_FORMAT);
        return -1;
    }

    if ((minsize > 0) && (nchar < minsize)) {
        FUNC3(ASN1_F_ASN1_MBSTRING_NCOPY, ASN1_R_STRING_TOO_SHORT);
        FUNC4(strbuf, sizeof(strbuf), "%ld", minsize);
        FUNC5(2, "minsize=", strbuf);
        return -1;
    }

    if ((maxsize > 0) && (nchar > maxsize)) {
        FUNC3(ASN1_F_ASN1_MBSTRING_NCOPY, ASN1_R_STRING_TOO_LONG);
        FUNC4(strbuf, sizeof(strbuf), "%ld", maxsize);
        FUNC5(2, "maxsize=", strbuf);
        return -1;
    }

    /* Now work out minimal type (if any) */
    if (FUNC13(in, len, inform, type_str, &mask) < 0) {
        FUNC3(ASN1_F_ASN1_MBSTRING_NCOPY, ASN1_R_ILLEGAL_CHARACTERS);
        return -1;
    }

    /* Now work out output format and string type */
    outform = MBSTRING_ASC;
    if (mask & B_ASN1_NUMERICSTRING)
        str_type = V_ASN1_NUMERICSTRING;
    else if (mask & B_ASN1_PRINTABLESTRING)
        str_type = V_ASN1_PRINTABLESTRING;
    else if (mask & B_ASN1_IA5STRING)
        str_type = V_ASN1_IA5STRING;
    else if (mask & B_ASN1_T61STRING)
        str_type = V_ASN1_T61STRING;
    else if (mask & B_ASN1_BMPSTRING) {
        str_type = V_ASN1_BMPSTRING;
        outform = MBSTRING_BMP;
    } else if (mask & B_ASN1_UNIVERSALSTRING) {
        str_type = V_ASN1_UNIVERSALSTRING;
        outform = MBSTRING_UNIV;
    } else {
        str_type = V_ASN1_UTF8STRING;
        outform = MBSTRING_UTF8;
    }
    if (!out)
        return str_type;
    if (*out) {
        free_out = 0;
        dest = *out;
        FUNC6(dest->data);
        dest->data = NULL;
        dest->length = 0;
        dest->type = str_type;
    } else {
        free_out = 1;
        dest = FUNC2(str_type);
        if (dest == NULL) {
            FUNC3(ASN1_F_ASN1_MBSTRING_NCOPY, ERR_R_MALLOC_FAILURE);
            return -1;
        }
        *out = dest;
    }
    /* If both the same type just copy across */
    if (inform == outform) {
        if (!FUNC1(dest, in, len)) {
            FUNC3(ASN1_F_ASN1_MBSTRING_NCOPY, ERR_R_MALLOC_FAILURE);
            return -1;
        }
        return str_type;
    }

    /* Work out how much space the destination will need */
    switch (outform) {
    case MBSTRING_ASC:
        outlen = nchar;
        cpyfunc = cpy_asc;
        break;

    case MBSTRING_BMP:
        outlen = nchar << 1;
        cpyfunc = cpy_bmp;
        break;

    case MBSTRING_UNIV:
        outlen = nchar << 2;
        cpyfunc = cpy_univ;
        break;

    case MBSTRING_UTF8:
        outlen = 0;
        FUNC13(in, len, inform, out_utf8, &outlen);
        cpyfunc = cpy_utf8;
        break;
    }
    if ((p = FUNC7(outlen + 1)) == NULL) {
        if (free_out)
            FUNC0(dest);
        FUNC3(ASN1_F_ASN1_MBSTRING_NCOPY, ERR_R_MALLOC_FAILURE);
        return -1;
    }
    dest->length = outlen;
    dest->data = p;
    p[outlen] = 0;
    FUNC13(in, len, inform, cpyfunc, &p);
    return str_type;
}