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
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_3__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ ASN1_OCTET_STRING ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,unsigned char const**,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  PKCS12_F_PKCS12_ITEM_DECRYPT_D2I ; 
 int /*<<< orphan*/  PKCS12_R_DECODE_ERROR ; 
 int /*<<< orphan*/  PKCS12_R_PKCS12_PBE_CRYPT_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char**,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 

void *FUNC9(const X509_ALGOR *algor, const ASN1_ITEM *it,
                              const char *pass, int passlen,
                              const ASN1_OCTET_STRING *oct, int zbuf)
{
    unsigned char *out;
    const unsigned char *p;
    void *ret;
    int outlen;

    if (!FUNC3(algor, pass, passlen, oct->data, oct->length,
                          &out, &outlen, 0)) {
        FUNC4(PKCS12_F_PKCS12_ITEM_DECRYPT_D2I,
                  PKCS12_R_PKCS12_PBE_CRYPT_ERROR);
        return NULL;
    }
    p = out;
#ifdef OPENSSL_DEBUG_DECRYPT
    {
        FILE *op;

        char fname[30];
        static int fnm = 1;
        sprintf(fname, "DER%d", fnm++);
        op = fopen(fname, "wb");
        fwrite(p, 1, outlen, op);
        fclose(op);
    }
#endif
    ret = FUNC0(NULL, &p, outlen, it);
    if (zbuf)
        FUNC1(out, outlen);
    if (!ret)
        FUNC4(PKCS12_F_PKCS12_ITEM_DECRYPT_D2I, PKCS12_R_DECODE_ERROR);
    FUNC2(out);
    return ret;
}