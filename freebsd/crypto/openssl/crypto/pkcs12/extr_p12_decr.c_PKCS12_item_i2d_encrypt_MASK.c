#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ASN1_OCTET_STRING ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int FUNC2 (void*,unsigned char**,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  PKCS12_F_PKCS12_ITEM_I2D_ENCRYPT ; 
 int /*<<< orphan*/  PKCS12_R_ENCODE_ERROR ; 
 int /*<<< orphan*/  PKCS12_R_ENCRYPT_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int,unsigned char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ASN1_OCTET_STRING *FUNC7(X509_ALGOR *algor,
                                           const ASN1_ITEM *it,
                                           const char *pass, int passlen,
                                           void *obj, int zbuf)
{
    ASN1_OCTET_STRING *oct = NULL;
    unsigned char *in = NULL;
    int inlen;

    if ((oct = FUNC1()) == NULL) {
        FUNC6(PKCS12_F_PKCS12_ITEM_I2D_ENCRYPT, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    inlen = FUNC2(obj, &in, it);
    if (!in) {
        FUNC6(PKCS12_F_PKCS12_ITEM_I2D_ENCRYPT, PKCS12_R_ENCODE_ERROR);
        goto err;
    }
    if (!FUNC5(algor, pass, passlen, in, inlen, &oct->data,
                          &oct->length, 1)) {
        FUNC6(PKCS12_F_PKCS12_ITEM_I2D_ENCRYPT, PKCS12_R_ENCRYPT_ERROR);
        FUNC4(in);
        goto err;
    }
    if (zbuf)
        FUNC3(in, inlen);
    FUNC4(in);
    return oct;
 err:
    FUNC0(oct);
    return NULL;
}