#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_EXTENSION ;
struct TYPE_7__ {int (* i2d ) (void*,unsigned char**) ;scalar_t__ it; } ;
typedef  TYPE_1__ X509V3_EXT_METHOD ;
struct TYPE_8__ {unsigned char* data; int length; } ;
typedef  TYPE_2__ ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 () ; 
 int FUNC3 (void*,unsigned char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 unsigned char* FUNC5 (int) ; 
 int /*<<< orphan*/  X509V3_F_DO_EXT_I2D ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int,int,TYPE_2__*) ; 
 int FUNC8 (void*,unsigned char**) ; 
 int FUNC9 (void*,unsigned char**) ; 

__attribute__((used)) static X509_EXTENSION *FUNC10(const X509V3_EXT_METHOD *method,
                                  int ext_nid, int crit, void *ext_struc)
{
    unsigned char *ext_der = NULL;
    int ext_len;
    ASN1_OCTET_STRING *ext_oct = NULL;
    X509_EXTENSION *ext;
    /* Convert internal representation to DER */
    if (method->it) {
        ext_der = NULL;
        ext_len =
            FUNC3(ext_struc, &ext_der, FUNC0(method->it));
        if (ext_len < 0)
            goto merr;
    } else {
        unsigned char *p;

        ext_len = method->i2d(ext_struc, NULL);
        if ((ext_der = FUNC5(ext_len)) == NULL)
            goto merr;
        p = ext_der;
        method->i2d(ext_struc, &p);
    }
    if ((ext_oct = FUNC2()) == NULL)
        goto merr;
    ext_oct->data = ext_der;
    ext_der = NULL;
    ext_oct->length = ext_len;

    ext = FUNC7(NULL, ext_nid, crit, ext_oct);
    if (!ext)
        goto merr;
    FUNC1(ext_oct);

    return ext;

 merr:
    FUNC6(X509V3_F_DO_EXT_I2D, ERR_R_MALLOC_FAILURE);
    FUNC4(ext_der);
    FUNC1(ext_oct);
    return NULL;

}