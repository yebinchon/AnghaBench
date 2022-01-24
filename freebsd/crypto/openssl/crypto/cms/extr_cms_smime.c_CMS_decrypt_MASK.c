#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_12__ {TYPE_2__* envelopedData; } ;
struct TYPE_13__ {TYPE_3__ d; } ;
struct TYPE_11__ {TYPE_1__* encryptedContentInfo; } ;
struct TYPE_10__ {int debug; int havenocert; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_4__ CMS_ContentInfo ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 unsigned int CMS_DEBUG_DECRYPT ; 
 int /*<<< orphan*/  CMS_F_CMS_DECRYPT ; 
 int /*<<< orphan*/  CMS_R_TYPE_NOT_ENVELOPED_DATA ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NID_pkcs7_enveloped ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(CMS_ContentInfo *cms, EVP_PKEY *pk, X509 *cert,
                BIO *dcont, BIO *out, unsigned int flags)
{
    int r;
    BIO *cont;
    if (FUNC4(FUNC2(cms)) != NID_pkcs7_enveloped) {
        FUNC3(CMS_F_CMS_DECRYPT, CMS_R_TYPE_NOT_ENVELOPED_DATA);
        return 0;
    }
    if (!dcont && !FUNC5(cms))
        return 0;
    if (flags & CMS_DEBUG_DECRYPT)
        cms->d.envelopedData->encryptedContentInfo->debug = 1;
    else
        cms->d.envelopedData->encryptedContentInfo->debug = 0;
    if (!cert)
        cms->d.envelopedData->encryptedContentInfo->havenocert = 1;
    else
        cms->d.envelopedData->encryptedContentInfo->havenocert = 0;
    if (!pk && !cert && !dcont && !out)
        return 1;
    if (pk && !FUNC1(cms, pk, cert))
        return 0;
    cont = FUNC0(cms, dcont);
    if (!cont)
        return 0;
    r = FUNC6(out, cont, flags);
    FUNC7(cont, dcont);
    return r;
}