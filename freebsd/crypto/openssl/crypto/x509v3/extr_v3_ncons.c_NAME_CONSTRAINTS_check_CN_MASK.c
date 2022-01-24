#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_NAME_ENTRY ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_9__ {size_t length; unsigned char* data; int /*<<< orphan*/  type; scalar_t__ flags; } ;
struct TYPE_7__ {TYPE_3__* dNSName; } ;
struct TYPE_8__ {TYPE_1__ d; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  NAME_CONSTRAINTS ;
typedef  TYPE_2__ GENERAL_NAME ;
typedef  TYPE_3__ ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  GEN_DNS ; 
 int /*<<< orphan*/  NID_commonName ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  V_ASN1_IA5STRING ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int X509_V_OK ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_3__*,unsigned char**,size_t*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC7(X509 *x, NAME_CONSTRAINTS *nc)
{
    int r, i;
    X509_NAME *nm = FUNC4(x);
    ASN1_STRING stmp;
    GENERAL_NAME gntmp;

    stmp.flags = 0;
    stmp.type = V_ASN1_IA5STRING;
    gntmp.type = GEN_DNS;
    gntmp.d.dNSName = &stmp;

    /* Process any commonName attributes in subject name */

    for (i = -1;;) {
        X509_NAME_ENTRY *ne;
        ASN1_STRING *cn;
        unsigned char *idval;
        size_t idlen;

        i = FUNC3(nm, NID_commonName, i);
        if (i == -1)
            break;
        ne = FUNC2(nm, i);
        cn = FUNC1(ne);

        /* Only process attributes that look like host names */
        if ((r = FUNC5(cn, &idval, &idlen)) != X509_V_OK)
            return r;
        if (idlen == 0)
            continue;

        stmp.length = idlen;
        stmp.data = idval;
        r = FUNC6(&gntmp, nc);
        FUNC0(idval);
        if (r != X509_V_OK)
            return r;
    }
    return X509_V_OK;
}