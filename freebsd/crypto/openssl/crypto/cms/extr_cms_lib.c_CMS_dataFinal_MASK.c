#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  contentType; } ;
typedef  TYPE_1__ CMS_ContentInfo ;
typedef  int /*<<< orphan*/  BIO ;
typedef  TYPE_2__ ASN1_OCTET_STRING ;

/* Variables and functions */
 int ASN1_STRING_FLAG_CONT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,unsigned char*,long) ; 
 int /*<<< orphan*/  BIO_FLAGS_MEM_RDONLY ; 
 int /*<<< orphan*/  BIO_TYPE_MEM ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMS_F_CMS_DATAFINAL ; 
 int /*<<< orphan*/  CMS_R_CONTENT_NOT_FOUND ; 
 int /*<<< orphan*/  CMS_R_UNSUPPORTED_TYPE ; 
 TYPE_2__** FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  NID_id_smime_ct_compressedData 133 
#define  NID_pkcs7_data 132 
#define  NID_pkcs7_digest 131 
#define  NID_pkcs7_encrypted 130 
#define  NID_pkcs7_enveloped 129 
#define  NID_pkcs7_signed 128 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC10(CMS_ContentInfo *cms, BIO *cmsbio)
{
    ASN1_OCTET_STRING **pos = FUNC5(cms);
    if (!pos)
        return 0;
    /* If embedded content find memory BIO and set content */
    if (*pos && ((*pos)->flags & ASN1_STRING_FLAG_CONT)) {
        BIO *mbio;
        unsigned char *cont;
        long contlen;
        mbio = FUNC1(cmsbio, BIO_TYPE_MEM);
        if (!mbio) {
            FUNC6(CMS_F_CMS_DATAFINAL, CMS_R_CONTENT_NOT_FOUND);
            return 0;
        }
        contlen = FUNC2(mbio, &cont);
        /* Set bio as read only so its content can't be clobbered */
        FUNC3(mbio, BIO_FLAGS_MEM_RDONLY);
        FUNC4(mbio, 0);
        FUNC0(*pos, cont, contlen);
        (*pos)->flags &= ~ASN1_STRING_FLAG_CONT;
    }

    switch (FUNC7(cms->contentType)) {

    case NID_pkcs7_data:
    case NID_pkcs7_enveloped:
    case NID_pkcs7_encrypted:
    case NID_id_smime_ct_compressedData:
        /* Nothing to do */
        return 1;

    case NID_pkcs7_signed:
        return FUNC9(cms, cmsbio);

    case NID_pkcs7_digest:
        return FUNC8(cms, cmsbio, 0);

    default:
        FUNC6(CMS_F_CMS_DATAFINAL, CMS_R_UNSUPPORTED_TYPE);
        return 0;
    }
}