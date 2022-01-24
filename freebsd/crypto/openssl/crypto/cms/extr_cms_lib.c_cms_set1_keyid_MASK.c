#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  CMS_F_CMS_SET1_KEYID ; 
 int /*<<< orphan*/  CMS_R_CERTIFICATE_HAS_NO_KEYID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(ASN1_OCTET_STRING **pkeyid, X509 *cert)
{
    ASN1_OCTET_STRING *keyid = NULL;
    const ASN1_OCTET_STRING *cert_keyid;
    cert_keyid = FUNC3(cert);
    if (cert_keyid == NULL) {
        FUNC2(CMS_F_CMS_SET1_KEYID, CMS_R_CERTIFICATE_HAS_NO_KEYID);
        return 0;
    }
    keyid = FUNC1(cert_keyid);
    if (!keyid) {
        FUNC2(CMS_F_CMS_SET1_KEYID, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    FUNC0(*pkeyid);
    *pkeyid = keyid;
    return 1;
}