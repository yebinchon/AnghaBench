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
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_12__ {TYPE_2__* signedData; } ;
struct TYPE_14__ {TYPE_3__ d; } ;
struct TYPE_13__ {int /*<<< orphan*/  digestAlgorithms; } ;
struct TYPE_11__ {TYPE_1__* encapContentInfo; } ;
struct TYPE_10__ {scalar_t__ partial; } ;
typedef  TYPE_4__ CMS_SignedData ;
typedef  TYPE_5__ CMS_ContentInfo ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int) ; 

BIO *FUNC7(CMS_ContentInfo *cms)
{
    int i;
    CMS_SignedData *sd;
    BIO *chain = NULL;
    sd = FUNC3(cms);
    if (!sd)
        return NULL;
    if (cms->d.signedData->encapContentInfo->partial)
        FUNC4(sd);
    for (i = 0; i < FUNC5(sd->digestAlgorithms); i++) {
        X509_ALGOR *digestAlgorithm;
        BIO *mdbio;
        digestAlgorithm = FUNC6(sd->digestAlgorithms, i);
        mdbio = FUNC2(digestAlgorithm);
        if (!mdbio)
            goto err;
        if (chain)
            FUNC1(chain, mdbio);
        else
            chain = mdbio;
    }
    return chain;
 err:
    FUNC0(chain);
    return NULL;
}