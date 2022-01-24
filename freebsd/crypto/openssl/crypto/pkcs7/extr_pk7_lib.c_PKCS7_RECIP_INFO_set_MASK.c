#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_12__ {TYPE_2__* ameth; } ;
struct TYPE_11__ {int /*<<< orphan*/ * cert; TYPE_1__* issuer_and_serial; int /*<<< orphan*/  version; } ;
struct TYPE_10__ {int (* pkey_ctrl ) (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  serial; int /*<<< orphan*/  issuer; } ;
typedef  TYPE_3__ PKCS7_RECIP_INFO ;
typedef  TYPE_4__ EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASN1_PKEY_CTRL_PKCS7_ENCRYPT ; 
 int /*<<< orphan*/  PKCS7_F_PKCS7_RECIP_INFO_SET ; 
 int /*<<< orphan*/  PKCS7_R_ENCRYPTION_CTRL_FAILURE ; 
 int /*<<< orphan*/  PKCS7_R_ENCRYPTION_NOT_SUPPORTED_FOR_THIS_KEY_TYPE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 

int FUNC10(PKCS7_RECIP_INFO *p7i, X509 *x509)
{
    int ret;
    EVP_PKEY *pkey = NULL;
    if (!FUNC2(p7i->version, 0))
        return 0;
    if (!FUNC4(&p7i->issuer_and_serial->issuer,
                       FUNC6(x509)))
        return 0;

    FUNC1(p7i->issuer_and_serial->serial);
    if (!(p7i->issuer_and_serial->serial =
          FUNC0(FUNC7(x509))))
        return 0;

    pkey = FUNC5(x509);

    if (!pkey || !pkey->ameth || !pkey->ameth->pkey_ctrl) {
        FUNC3(PKCS7_F_PKCS7_RECIP_INFO_SET,
                 PKCS7_R_ENCRYPTION_NOT_SUPPORTED_FOR_THIS_KEY_TYPE);
        goto err;
    }

    ret = pkey->ameth->pkey_ctrl(pkey, ASN1_PKEY_CTRL_PKCS7_ENCRYPT, 0, p7i);
    if (ret == -2) {
        FUNC3(PKCS7_F_PKCS7_RECIP_INFO_SET,
                 PKCS7_R_ENCRYPTION_NOT_SUPPORTED_FOR_THIS_KEY_TYPE);
        goto err;
    }
    if (ret <= 0) {
        FUNC3(PKCS7_F_PKCS7_RECIP_INFO_SET,
                 PKCS7_R_ENCRYPTION_CTRL_FAILURE);
        goto err;
    }

    FUNC8(x509);
    p7i->cert = x509;

    return 1;

 err:
    return 0;
}