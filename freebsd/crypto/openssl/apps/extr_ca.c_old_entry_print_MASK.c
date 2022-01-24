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
struct TYPE_3__ {scalar_t__ type; int length; scalar_t__ data; } ;
typedef  TYPE_1__ ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ V_ASN1_IA5STRING ; 
 scalar_t__ V_ASN1_PRINTABLESTRING ; 
 scalar_t__ V_ASN1_T61STRING ; 
 scalar_t__ V_ASN1_UNIVERSALSTRING ; 
 int /*<<< orphan*/  bio_err ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(const ASN1_OBJECT *obj, const ASN1_STRING *str)
{
    char buf[25], *pbuf;
    const char *p;
    int j;

    j = FUNC2(bio_err, obj);
    pbuf = buf;
    for (j = 22 - j; j > 0; j--)
        *(pbuf++) = ' ';
    *(pbuf++) = ':';
    *(pbuf++) = '\0';
    FUNC1(bio_err, buf);

    if (str->type == V_ASN1_PRINTABLESTRING)
        FUNC0(bio_err, "PRINTABLE:'");
    else if (str->type == V_ASN1_T61STRING)
        FUNC0(bio_err, "T61STRING:'");
    else if (str->type == V_ASN1_IA5STRING)
        FUNC0(bio_err, "IA5STRING:'");
    else if (str->type == V_ASN1_UNIVERSALSTRING)
        FUNC0(bio_err, "UNIVERSALSTRING:'");
    else
        FUNC0(bio_err, "ASN.1 %2d:'", str->type);

    p = (const char *)str->data;
    for (j = str->length; j > 0; j--) {
        if ((*p >= ' ') && (*p <= '~'))
            FUNC0(bio_err, "%c", *p);
        else if (*p & 0x80)
            FUNC0(bio_err, "\\0x%02X", *p);
        else if ((unsigned char)*p == 0xf7)
            FUNC0(bio_err, "^?");
        else
            FUNC0(bio_err, "^%c", *p + '@');
        p++;
    }
    FUNC0(bio_err, "'\n");
    return 1;
}