#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int type; unsigned char* data; long length; int flags; } ;
struct TYPE_11__ {TYPE_6__* asn1_string; int /*<<< orphan*/  bit_string; int /*<<< orphan*/ * object; int /*<<< orphan*/ * integer; int /*<<< orphan*/  boolean; } ;
struct TYPE_13__ {int type; TYPE_1__ value; } ;
struct TYPE_12__ {char* value; int /*<<< orphan*/ * section; int /*<<< orphan*/ * name; } ;
typedef  TYPE_2__ CONF_VALUE ;
typedef  TYPE_3__ ASN1_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_ASN1_STR2TYPE ; 
 int ASN1_GEN_FORMAT_ASCII ; 
 int ASN1_GEN_FORMAT_BITLIST ; 
 int ASN1_GEN_FORMAT_HEX ; 
 int ASN1_GEN_FORMAT_UTF8 ; 
 int /*<<< orphan*/  ASN1_R_ILLEGAL_BITSTRING_FORMAT ; 
 int /*<<< orphan*/  ASN1_R_ILLEGAL_BOOLEAN ; 
 int /*<<< orphan*/  ASN1_R_ILLEGAL_FORMAT ; 
 int /*<<< orphan*/  ASN1_R_ILLEGAL_HEX ; 
 int /*<<< orphan*/  ASN1_R_ILLEGAL_INTEGER ; 
 int /*<<< orphan*/  ASN1_R_ILLEGAL_NULL_VALUE ; 
 int /*<<< orphan*/  ASN1_R_ILLEGAL_OBJECT ; 
 int /*<<< orphan*/  ASN1_R_ILLEGAL_TIME_VALUE ; 
 int /*<<< orphan*/  ASN1_R_INTEGER_NOT_ASCII_FORMAT ; 
 int /*<<< orphan*/  ASN1_R_LIST_ERROR ; 
 int /*<<< orphan*/  ASN1_R_NOT_ASCII_FORMAT ; 
 int /*<<< orphan*/  ASN1_R_OBJECT_NOT_ASCII_FORMAT ; 
 int /*<<< orphan*/  ASN1_R_TIME_NOT_ASCII_FORMAT ; 
 int /*<<< orphan*/  ASN1_R_UNSUPPORTED_TYPE ; 
 int ASN1_STRING_FLAG_BITS_LEFT ; 
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__**,unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC9 (int,char*,char const*) ; 
 int MBSTRING_ASC ; 
 int MBSTRING_UTF8 ; 
 int /*<<< orphan*/ * FUNC10 (char const*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC11 (char const*,long*) ; 
#define  V_ASN1_BIT_STRING 145 
#define  V_ASN1_BMPSTRING 144 
#define  V_ASN1_BOOLEAN 143 
#define  V_ASN1_ENUMERATED 142 
#define  V_ASN1_GENERALIZEDTIME 141 
#define  V_ASN1_GENERALSTRING 140 
#define  V_ASN1_IA5STRING 139 
#define  V_ASN1_INTEGER 138 
#define  V_ASN1_NULL 137 
#define  V_ASN1_NUMERICSTRING 136 
#define  V_ASN1_OBJECT 135 
#define  V_ASN1_OCTET_STRING 134 
#define  V_ASN1_PRINTABLESTRING 133 
#define  V_ASN1_T61STRING 132 
#define  V_ASN1_UNIVERSALSTRING 131 
#define  V_ASN1_UTCTIME 130 
#define  V_ASN1_UTF8STRING 129 
#define  V_ASN1_VISIBLESTRING 128 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bitstr_cb ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static ASN1_TYPE *FUNC14(const char *str, int format, int utype)
{
    ASN1_TYPE *atmp = NULL;
    CONF_VALUE vtmp;
    unsigned char *rdata;
    long rdlen;
    int no_unused = 1;

    if ((atmp = FUNC4()) == NULL) {
        FUNC7(ASN1_F_ASN1_STR2TYPE, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    if (!str)
        str = "";

    switch (utype) {

    case V_ASN1_NULL:
        if (str && *str) {
            FUNC7(ASN1_F_ASN1_STR2TYPE, ASN1_R_ILLEGAL_NULL_VALUE);
            goto bad_form;
        }
        break;

    case V_ASN1_BOOLEAN:
        if (format != ASN1_GEN_FORMAT_ASCII) {
            FUNC7(ASN1_F_ASN1_STR2TYPE, ASN1_R_NOT_ASCII_FORMAT);
            goto bad_form;
        }
        vtmp.name = NULL;
        vtmp.section = NULL;
        vtmp.value = (char *)str;
        if (!FUNC12(&vtmp, &atmp->value.boolean)) {
            FUNC7(ASN1_F_ASN1_STR2TYPE, ASN1_R_ILLEGAL_BOOLEAN);
            goto bad_str;
        }
        break;

    case V_ASN1_INTEGER:
    case V_ASN1_ENUMERATED:
        if (format != ASN1_GEN_FORMAT_ASCII) {
            FUNC7(ASN1_F_ASN1_STR2TYPE, ASN1_R_INTEGER_NOT_ASCII_FORMAT);
            goto bad_form;
        }
        if ((atmp->value.integer
                    = FUNC13(NULL, str)) == NULL) {
            FUNC7(ASN1_F_ASN1_STR2TYPE, ASN1_R_ILLEGAL_INTEGER);
            goto bad_str;
        }
        break;

    case V_ASN1_OBJECT:
        if (format != ASN1_GEN_FORMAT_ASCII) {
            FUNC7(ASN1_F_ASN1_STR2TYPE, ASN1_R_OBJECT_NOT_ASCII_FORMAT);
            goto bad_form;
        }
        if ((atmp->value.object = FUNC10(str, 0)) == NULL) {
            FUNC7(ASN1_F_ASN1_STR2TYPE, ASN1_R_ILLEGAL_OBJECT);
            goto bad_str;
        }
        break;

    case V_ASN1_UTCTIME:
    case V_ASN1_GENERALIZEDTIME:
        if (format != ASN1_GEN_FORMAT_ASCII) {
            FUNC7(ASN1_F_ASN1_STR2TYPE, ASN1_R_TIME_NOT_ASCII_FORMAT);
            goto bad_form;
        }
        if ((atmp->value.asn1_string = FUNC0()) == NULL) {
            FUNC7(ASN1_F_ASN1_STR2TYPE, ERR_R_MALLOC_FAILURE);
            goto bad_str;
        }
        if (!FUNC1(atmp->value.asn1_string, str, -1)) {
            FUNC7(ASN1_F_ASN1_STR2TYPE, ERR_R_MALLOC_FAILURE);
            goto bad_str;
        }
        atmp->value.asn1_string->type = utype;
        if (!FUNC2(atmp->value.asn1_string)) {
            FUNC7(ASN1_F_ASN1_STR2TYPE, ASN1_R_ILLEGAL_TIME_VALUE);
            goto bad_str;
        }

        break;

    case V_ASN1_BMPSTRING:
    case V_ASN1_PRINTABLESTRING:
    case V_ASN1_IA5STRING:
    case V_ASN1_T61STRING:
    case V_ASN1_UTF8STRING:
    case V_ASN1_VISIBLESTRING:
    case V_ASN1_UNIVERSALSTRING:
    case V_ASN1_GENERALSTRING:
    case V_ASN1_NUMERICSTRING:
        if (format == ASN1_GEN_FORMAT_ASCII)
            format = MBSTRING_ASC;
        else if (format == ASN1_GEN_FORMAT_UTF8)
            format = MBSTRING_UTF8;
        else {
            FUNC7(ASN1_F_ASN1_STR2TYPE, ASN1_R_ILLEGAL_FORMAT);
            goto bad_form;
        }

        if (FUNC5(&atmp->value.asn1_string, (unsigned char *)str,
                               -1, format, FUNC6(utype)) <= 0) {
            FUNC7(ASN1_F_ASN1_STR2TYPE, ERR_R_MALLOC_FAILURE);
            goto bad_str;
        }

        break;

    case V_ASN1_BIT_STRING:
    case V_ASN1_OCTET_STRING:
        if ((atmp->value.asn1_string = FUNC0()) == NULL) {
            FUNC7(ASN1_F_ASN1_STR2TYPE, ERR_R_MALLOC_FAILURE);
            goto bad_form;
        }

        if (format == ASN1_GEN_FORMAT_HEX) {
            if ((rdata = FUNC11(str, &rdlen)) == NULL) {
                FUNC7(ASN1_F_ASN1_STR2TYPE, ASN1_R_ILLEGAL_HEX);
                goto bad_str;
            }
            atmp->value.asn1_string->data = rdata;
            atmp->value.asn1_string->length = rdlen;
            atmp->value.asn1_string->type = utype;
        } else if (format == ASN1_GEN_FORMAT_ASCII)
            FUNC1(atmp->value.asn1_string, str, -1);
        else if ((format == ASN1_GEN_FORMAT_BITLIST)
                 && (utype == V_ASN1_BIT_STRING)) {
            if (!FUNC8
                (str, ',', 1, bitstr_cb, atmp->value.bit_string)) {
                FUNC7(ASN1_F_ASN1_STR2TYPE, ASN1_R_LIST_ERROR);
                goto bad_str;
            }
            no_unused = 0;

        } else {
            FUNC7(ASN1_F_ASN1_STR2TYPE, ASN1_R_ILLEGAL_BITSTRING_FORMAT);
            goto bad_form;
        }

        if ((utype == V_ASN1_BIT_STRING) && no_unused) {
            atmp->value.asn1_string->flags
                &= ~(ASN1_STRING_FLAG_BITS_LEFT | 0x07);
            atmp->value.asn1_string->flags |= ASN1_STRING_FLAG_BITS_LEFT;
        }

        break;

    default:
        FUNC7(ASN1_F_ASN1_STR2TYPE, ASN1_R_UNSUPPORTED_TYPE);
        goto bad_str;
    }

    atmp->type = utype;
    return atmp;

 bad_str:
    FUNC9(2, "string=", str);
 bad_form:

    FUNC3(atmp);
    return NULL;

}