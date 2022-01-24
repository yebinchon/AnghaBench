#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int utype; } ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  TYPE_1__ ASN1_ITEM ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,int,int,int,int) ; 
 int V_ASN1_OTHER ; 
 int V_ASN1_SEQUENCE ; 
 int V_ASN1_SET ; 
 int FUNC3 (int /*<<< orphan*/ **,unsigned char*,int*,TYPE_1__ const*) ; 

__attribute__((used)) static int FUNC4(ASN1_VALUE **pval, unsigned char **out,
                                 const ASN1_ITEM *it, int tag, int aclass)
{
    int len;
    int utype;
    int usetag;
    int ndef = 0;

    utype = it->utype;

    /*
     * Get length of content octets and maybe find out the underlying type.
     */

    len = FUNC3(pval, NULL, &utype, it);

    /*
     * If SEQUENCE, SET or OTHER then header is included in pseudo content
     * octets so don't include tag+length. We need to check here because the
     * call to asn1_ex_i2c() could change utype.
     */
    if ((utype == V_ASN1_SEQUENCE) || (utype == V_ASN1_SET) ||
        (utype == V_ASN1_OTHER))
        usetag = 0;
    else
        usetag = 1;

    /* -1 means omit type */

    if (len == -1)
        return 0;

    /* -2 return is special meaning use ndef */
    if (len == -2) {
        ndef = 2;
        len = 0;
    }

    /* If not implicitly tagged get tag from underlying type */
    if (tag == -1)
        tag = utype;

    /* Output tag+length followed by content octets */
    if (out) {
        if (usetag)
            FUNC2(out, ndef, len, tag, aclass);
        FUNC3(pval, *out, &utype, it);
        if (ndef)
            FUNC1(out);
        else
            *out += len;
    }

    if (usetag)
        return FUNC0(ndef, len, tag);
    return len;
}