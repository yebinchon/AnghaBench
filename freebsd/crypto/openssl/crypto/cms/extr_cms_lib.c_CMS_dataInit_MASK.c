#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  contentType; } ;
typedef  TYPE_1__ CMS_ContentInfo ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CMS_F_CMS_DATAINIT ; 
 int /*<<< orphan*/  CMS_R_NO_CONTENT ; 
 int /*<<< orphan*/  CMS_R_UNSUPPORTED_TYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  NID_id_smime_ct_compressedData 133 
#define  NID_pkcs7_data 132 
#define  NID_pkcs7_digest 131 
#define  NID_pkcs7_encrypted 130 
#define  NID_pkcs7_enveloped 129 
#define  NID_pkcs7_signed 128 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*) ; 

BIO *FUNC10(CMS_ContentInfo *cms, BIO *icont)
{
    BIO *cmsbio, *cont;
    if (icont)
        cont = icont;
    else
        cont = FUNC9(cms);
    if (!cont) {
        FUNC2(CMS_F_CMS_DATAINIT, CMS_R_NO_CONTENT);
        return NULL;
    }
    switch (FUNC3(cms->contentType)) {

    case NID_pkcs7_data:
        return cont;

    case NID_pkcs7_signed:
        cmsbio = FUNC8(cms);
        break;

    case NID_pkcs7_digest:
        cmsbio = FUNC5(cms);
        break;
#ifdef ZLIB
    case NID_id_smime_ct_compressedData:
        cmsbio = cms_CompressedData_init_bio(cms);
        break;
#endif

    case NID_pkcs7_encrypted:
        cmsbio = FUNC6(cms);
        break;

    case NID_pkcs7_enveloped:
        cmsbio = FUNC7(cms);
        break;

    default:
        FUNC2(CMS_F_CMS_DATAINIT, CMS_R_UNSUPPORTED_TYPE);
        return NULL;
    }

    if (cmsbio)
        return FUNC1(cmsbio, cont);

    if (!icont)
        FUNC0(cont);
    return NULL;

}