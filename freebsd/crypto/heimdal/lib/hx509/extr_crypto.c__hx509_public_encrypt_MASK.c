#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_12__ {unsigned char* data; int length; } ;
typedef  TYPE_3__ heim_octet_string ;
struct TYPE_11__ {unsigned char* data; int length; } ;
struct TYPE_13__ {TYPE_2__ subjectPublicKey; } ;
struct TYPE_10__ {TYPE_4__ subjectPublicKeyInfo; } ;
struct TYPE_14__ {TYPE_1__ tbsCertificate; } ;
typedef  TYPE_4__ SubjectPublicKeyInfo ;
typedef  int /*<<< orphan*/  RSA ;
typedef  TYPE_5__ Certificate ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_OID_ID_PKCS1_RSAENCRYPTION ; 
 int ENOMEM ; 
 int HX509_CRYPTO_RSA_PUBLIC_ENCRYPT ; 
 int /*<<< orphan*/  RSA_PKCS1_PADDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,unsigned char*,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned char const**,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 unsigned char* FUNC9 (int) ; 

int
FUNC10(hx509_context context,
		      const heim_octet_string *cleartext,
		      const Certificate *cert,
		      heim_oid *encryption_oid,
		      heim_octet_string *ciphertext)
{
    const SubjectPublicKeyInfo *spi;
    unsigned char *to;
    int tosize;
    int ret;
    RSA *rsa;
    size_t size;
    const unsigned char *p;

    ciphertext->data = NULL;
    ciphertext->length = 0;

    spi = &cert->tbsCertificate.subjectPublicKeyInfo;

    p = spi->subjectPublicKey.data;
    size = spi->subjectPublicKey.length / 8;

    rsa = FUNC4(NULL, &p, size);
    if (rsa == NULL) {
	FUNC8(context, 0, ENOMEM, "out of memory");
	return ENOMEM;
    }

    tosize = FUNC2(rsa);
    to = FUNC9(tosize);
    if (to == NULL) {
	FUNC0(rsa);
	FUNC8(context, 0, ENOMEM, "out of memory");
	return ENOMEM;
    }

    ret = FUNC1(cleartext->length,
			     (unsigned char *)cleartext->data,
			     to, rsa, RSA_PKCS1_PADDING);
    FUNC0(rsa);
    if (ret <= 0) {
	FUNC7(to);
	FUNC8(context, 0, HX509_CRYPTO_RSA_PUBLIC_ENCRYPT,
			       "RSA public encrypt failed with %d", ret);
	return HX509_CRYPTO_RSA_PUBLIC_ENCRYPT;
    }
    if (ret > tosize)
	FUNC3("internal rsa decryption failure: ret > tosize");

    ciphertext->length = ret;
    ciphertext->data = to;

    ret = FUNC5(ASN1_OID_ID_PKCS1_RSAENCRYPTION, encryption_oid);
    if (ret) {
	FUNC6(ciphertext);
	FUNC8(context, 0, ENOMEM, "out of memory");
	return ENOMEM;
    }

    return 0;
}