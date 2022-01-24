#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* hx509_private_key ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_10__ {size_t length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ heim_octet_string ;
struct TYPE_8__ {int /*<<< orphan*/ * rsa; } ;
struct TYPE_9__ {TYPE_1__ private_key; } ;

/* Variables and functions */
 int ENOMEM ; 
 int HX509_CRYPTO_RSA_PRIVATE_DECRYPT ; 
 int HX509_PRIVATE_KEY_MISSING ; 
 int /*<<< orphan*/  RSA_PKCS1_PADDING ; 
 int FUNC0 (size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (size_t) ; 

int
FUNC6(hx509_context context,
				   const heim_octet_string *ciphertext,
				   const heim_oid *encryption_oid,
				   hx509_private_key p,
				   heim_octet_string *cleartext)
{
    int ret;

    cleartext->data = NULL;
    cleartext->length = 0;

    if (p->private_key.rsa == NULL) {
	FUNC4(context, 0, HX509_PRIVATE_KEY_MISSING,
			       "Private RSA key missing");
	return HX509_PRIVATE_KEY_MISSING;
    }

    cleartext->length = FUNC1(p->private_key.rsa);
    cleartext->data = FUNC5(cleartext->length);
    if (cleartext->data == NULL) {
	FUNC4(context, 0, ENOMEM, "out of memory");
	return ENOMEM;
    }
    ret = FUNC0(ciphertext->length, ciphertext->data,
			      cleartext->data,
			      p->private_key.rsa,
			      RSA_PKCS1_PADDING);
    if (ret <= 0) {
	FUNC3(cleartext);
	FUNC4(context, 0, HX509_CRYPTO_RSA_PRIVATE_DECRYPT,
			       "Failed to decrypt using private key: %d", ret);
	return HX509_CRYPTO_RSA_PRIVATE_DECRYPT;
    }
    if (cleartext->length < (size_t)ret)
	FUNC2("internal rsa decryption failure: ret > tosize");

    cleartext->length = ret;

    return 0;
}